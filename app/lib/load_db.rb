
require 'nokogiri'

module LoadDB

  # Given a directory name, return an Enumerator that will return each
  # file to be processes in time order (oldest first).
  def self.files(dir)
    Dir.glob("#{dir}/news.*.gz").map {|f| File.basename(f).split('.')[1] }.sort {|a, b| a <=> b}.map {|f| "#{dir}/news.#{f}.gz" }
  end

  # If the filename starts with 'news.' and next has a valid date 'YYMMDDMMMM'
  def self.valid_name filename
    filename = File.basename(filename)
    fields = filename.split(/\./)
    raise HackerNews::InvalidFileName unless (fields.length == 2 or fields.length == 3)
    if filename =~ /^news\./ && fields[1] =~ /^\d{10}$/
      true
    else
      raise HackerNews::InvalidFileName
    end
  end

  # Get the date that the file was created from the file name.
  # Parse the date of the file and return it a string 'YYMMDDMMMM'
  # Up to the user to run valid_name on the filename first.
  def self.parse_date filename
    File.basename(filename).split(/\./)[1]
  end

  # If the filename ends with '.gz' open the file via gzip otherwise simply open the file.
  def self.openfile filename
    if filename =~ /\.gz$/
      io = IO.popen("gunzip < #{filename} 2>/dev/null")
    else
      io = open(filename)
    end
    if block_given?
      begin
        yield io
      ensure
        io.close
      end
    else
      io
    end
  end

  # Make time
  #
  # The date used by the script to wget the contents of the hacker news site, is
  # YYMMDDmmss, which needs to be massaged into a format suitable for calling
  # Time.new
  # Return the a Time.new object made from the date.
  #
  def self.make_time(date)
    year, month, date, hour, minute, second = *date.scan(/../), 0
    Time.new(2000 + year.to_i, month, date, hour, minute, second)
  end

  def self.update_db(hn_id, date, href, description)
    HN.process_latest_hn_num_one(hn_id: hn_id, date: make_time(date), href: href, description: description)
  end

  # :nodoc:
  # Comment on the long logic expression by method name rather than a comment.
  def self.element_has_one_child_and_href_begins_with_http elem
    elem.children && elem.children.length == 1 && elem['href'] && elem['href'] =~ /^http/
  end

  def self.open_and_read_file(filename)
    lines = []
    raise HackerNews::InvalidFileName unless valid_name(filename)
    openfile(filename) do |io|
      lines = io.readlines.join
    end
    if lines.empty? # gunzip failed / nothing to process
      raise HackerNews::NothingToRead, "file '#{filename}' contained no data"
    else
      yield lines
    end
  end

  def self.process_html_from_hacker_news(lines)
    elem = Nokogiri::HTML(lines).css('tr > td.title > a').find do |elem|
      element_has_one_child_and_href_begins_with_http elem
    end
    raise HackerNews::ElementNotFound unless elem
    id_elem = elem.parent.parent.children[1].child.child['id'].sub('up_', '') # TODO clean this up.
    raise HackerNews::BadHNId unless HN.valid_hn_id(id_elem)
    return id_elem, elem['href'], elem.children[0].content
  end

  def self.make_processed_filename(dirname, basename)
    File.join(dirname, 'O'+basename)
  end

  def self.mark_file_as_processed(filename)
    basename, dirname = File.basename(filename), File.dirname(filename)
    FileUtils.move(filename, make_processed_filename(dirname, basename))
  end

  # Load the html from https://news.ycombinator.com, parse it and update the database.
  def self.load(dir)
    files(dir).each do |filename|
      begin
        date = parse_date(filename)
        open_and_read_file(filename) do |lines|
          puts "processing #{filename}"
          id_elem, href, desc = process_html_from_hacker_news(lines)
          update_db(id_elem, date, href, desc)
          mark_file_as_processed(filename)
        end
      rescue Errno::ENOENT => e
        warn "Missing filename #{filename}: #{e.message}"
      rescue HackerNews::ElementNotFound => e
        warn "Bad HTML in file #{filename}: #{e.message}"
      rescue HackerNews::BadHNId => e
        warn "Bad Hacker News ID found in file #{filename}: #{e.message}"
      rescue HackerNews::NothingToRead => e
        warn "Empty input for file #{filename}: #{e.message}"
      rescue HackerNews::InvalidFileName => e
        warn "Bad file name for file #{filename}: #{e.message}"
      end
    end
  end

end

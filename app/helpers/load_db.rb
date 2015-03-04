
require 'nokogiri'

module LoadDB

  # Given a directory name, return an Enumerator that will return each
  # file to be processes in time order (oldest first).
  def self.files(dir)
    Dir.glob("#{dir}/news.*gz").lazy.to_enum
  end

  # If the filename starts with 'news.' and next has a valid date 'YYMMDDMMMM'
  def self.valid_name filename
    filename = File.basename(filename)
    fields = filename.split(/\./)
    return false unless (fields.length == 2 or fields.length == 3)
    filename =~ /^news\./ && fields[1] =~ /^\d{10}$/ ? true : false
  end

  # Get the date that the file was created from the file name.
  # Parse the date of the file and return it a string 'YYMMDDMMMM'
  # Up to the user to run valid_name on the filename first.
  def self.parse_date filename
    filename.split(/\./)[1]
  end

  # If the filename ends with '.gz' open the file via gzip otherwise simply open the file.
  def self.openfile filename
    if filename =~ /\.gz$/
      io = IO.popen("gunzip < #{filename}")
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

  def self.valid_hn_id elem
    elem =~ /^\d+$/ ? true : false
  end

  def self.update_db(hn_id, date, href, description)
    Story.new_top_hit(hn_id, date, href, description)
  end

  # :nodoc:
  # Comment on the long logic expression by method name rather than a comment.
  def self.element_has_one_child_and_href_begins_with_http elem
    elem.children && elem.children.length == 1 && elem['href'] && elem['href'] =~ /^http/
  end

  # Load the html from https://news.ycombinator.com, parse it and update the database.
  def self.load(dir)
    files(dir).each do |filename|
      if (valid_name(filename)) && (date = parse_date(filename))
        openfile(filename) do |io|
          lines = io.readlines.join
          elem = Nokogiri::HTML(lines).css('tr > td.title > a').find do |elem|
            element_has_one_child_and_href_begins_with_http elem
          end
          if elem
            # TODO can the following parent.parent.... line be cleaned up?
            id_elem = elem.parent.parent.children[1].child.child['id'].sub('up_', '')
            if valid_hn_id(id_elem)
              # update with the HN id, date from the file, the href and the text description
              update_db(id_elem, date, elem['href'], elem.children[0].content)
            else
              warn "bad hn_id in filename #{filename}"
            end
          end
        end
      else
        puts "skipping #{filename}: invalid file name"
      end
    end
  end

end

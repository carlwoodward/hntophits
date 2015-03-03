
module LoadDB

  # Given a directory name, return an Enumerator that will return each
  # file to be processes in time order (oldest first).
  def self.files(dir)
    Dir.glob("#{dir}/news.*gz").lazy.to_enum
  end

  # If the filename starts with 'news.' and next has a valid date 'YYMMDDMMMM'
  def self.valid_name filename
    filename =~ /^news\./ && filename.split(/./)[1] =~ /\d{10}/
  end

  # If the filename ends with '.gz' open the file via gzip otherwise simply open the file.
  def self.openfile filename
    if filename =~ /\.gz$/
      IO.popen("gunzip < #{filename}")
    else
      open(filename)
    end
  end

  # Load and parse the file into the database here.
  def load(dir)
    files(dir).each do |file|
    end
  end

end

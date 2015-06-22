
require "#{Dir.pwd}/app/lib/load_db"
require 'tmpdir'
require_relative "../../rails_helper"

Fixtures_directory = File.expand_path('test/fixture/load_html/downloads')

def reset_fixtures_directory_contents(dirname)
  Dir.chdir dirname
  Dir.glob("Onews*") do |file|
    FileUtils.move file, file.sub(/^O/, '')
  end
end

RSpec.describe LoadDB do
  describe 'LoadDB.files' do
    it 'will check that the fixtures directory exists' do
      expect(Dir.exists?(Fixtures_directory)).to be true 
    end
    it 'should return a list of files matching news.*gz' do
      expect(LoadDB.files(Fixtures_directory).first).to eq Fixtures_directory + '/news.1410150938.gz'
    end
  end

  describe 'LoadDB.valid_name' do
    it 'should be invalid because of missing prefix' do
      expect{LoadDB.valid_name(Fixtures_directory + '/missing.1234567890')}.to raise_exception(HackerNews::InvalidFileName)
    end
    it 'should be invalid because of missing/invalid date' do
      expect{LoadDB.valid_name(Fixtures_directory + '/news.150303222')}.to raise_exception(HackerNews::InvalidFileName)
    end
    it "should be valid because date is valid and there are enough fields and the date is valid" do
      expect(LoadDB.valid_name(Fixtures_directory + '/news.0123456789')).to be(true)
    end
    it "should be valid because it's ok to have 3 fields and the date is valid" do
      expect(LoadDB.valid_name(Fixtures_directory + '/news.0123456789.gz')).to be(true)
    end
    it 'should be invalid because of too many fields' do
      expect{LoadDB.valid_name(Fixtures_directory + '/news.0123456789.gz.gz')}.to raise_exception(HackerNews::InvalidFileName)
    end
  end

  describe 'LoadDB.parse_date' do
    it 'should return a date value' do
      filename = 'news.1503030111.gz'
      expect(LoadDB.parse_date(filename)).to eq '1503030111'
    end
    it "should fail because there is a lot more paths in the file name" do
      filename = './test/fixture/load_html/downloads/news.1410150938.gz'
      expect(LoadDB.parse_date(filename)).to eq '1410150938'
    end
    # LoadDB.parse_date doesn't make any guarentees about processing the date for the caller.
  end

  describe 'LoadDB.openfile' do
    it 'should return IO object ready to be read form when the file is compressed' do
      first_line = LoadDB.openfile(Fixtures_directory + '/dummy.txt').first
      expect(first_line).to eq "one\n"
    end
    it 'should return IO object ready to be read from when the file is not compressed' do
      io = LoadDB.openfile(Fixtures_directory + '/dummy.txt.gz')
      expect(io.readline).to eq "one\n"
      expect(io.readline).to eq "two\n"
    end

    it 'should call the block with the io object when given a compressed file' do
      LoadDB.openfile(Fixtures_directory + '/dummy.txt') do |io|
        first_line = io.readline
        expect(first_line).to eq "one\n"
      end
    end

    it 'should call the block with the io object when given regular file' do
      LoadDB.openfile(Fixtures_directory + '/dummy.txt.gz') do |io|
        expect(io.readline).to eq "one\n"
        expect(io.readline).to eq "two\n"
      end
    end
  end

  describe 'LoadDB.mark_file_as_processed' do
    it "should change the name of the file so that it won't be available for parsing" do
      Dir.mktmpdir do |dir|
        filename = 'news.2015010111'
        fullpath = File.join(dir, filename)
        FileUtils.touch fullpath
        expect(File.exists? fullpath).to be true
        LoadDB.mark_file_as_processed(fullpath)
        expect(File.exists?(LoadDB.make_processed_filename(dir, filename))).to be true
      end
    end
  end

  describe 'LoadDB.load' do
    it 'will test that update_db receives all of the correct values' do
      # it would be better to have more varied range of values here.
      expect(LoadDB).to receive(:update_db).with("8454828", "1410150938", "https://www.humblebundle.com/", "Humble Mozilla Bundle")
      expect(LoadDB).to receive(:update_db).with("8454828", "1410150939", "https://www.humblebundle.com/", "Humble Mozilla Bundle")
      expect(LoadDB).to receive(:update_db).with("8454828", "1410150940", "https://www.humblebundle.com/", "Humble Mozilla Bundle")
      expect(LoadDB).to receive(:update_db).with("8454828", "1410150941", "https://www.humblebundle.com/", "Humble Mozilla Bundle")
      expect(LoadDB).to receive(:update_db).with("8454828", "1410150942", "https://www.humblebundle.com/", "Humble Mozilla Bundle")
      expect(LoadDB).to receive(:update_db).with("8456178", "1410150943", "http://googleonlinesecurity.blogspot.com/2014/10/this-poodle-bites-exploiting-ssl-30.html", "This POODLE bites: exploiting the SSL 3.0 fallback")
      expect(LoadDB).to receive(:update_db).with("8456178", "1410150944", "http://googleonlinesecurity.blogspot.com/2014/10/this-poodle-bites-exploiting-ssl-30.html", "This POODLE bites: exploiting the SSL 3.0 fallback")
      expect(LoadDB).to receive(:update_db).with("8456178", "1410150945", "http://googleonlinesecurity.blogspot.com/2014/10/this-poodle-bites-exploiting-ssl-30.html", "This POODLE bites: exploiting the SSL 3.0 fallback")
      expect(LoadDB).to receive(:update_db).with("8456178", "1410150946", "http://googleonlinesecurity.blogspot.com/2014/10/this-poodle-bites-exploiting-ssl-30.html", "This POODLE bites: exploiting the SSL 3.0 fallback")
      expect(LoadDB).to receive(:update_db).with("9132815", "1503031100", "https://www.unrealengine.com/blog/ue4-is-free", "Unreal Engine 4 is now available to everyone for free")
      expect(LoadDB).to receive(:update_db).with("9132815", "1503031101", "https://www.unrealengine.com/blog/ue4-is-free", "Unreal Engine 4 is now available to everyone for free")
      expect(LoadDB).to receive(:update_db).with("9132815", "1503031102", "https://www.unrealengine.com/blog/ue4-is-free", "Unreal Engine 4 is now available to everyone for free")
      expect(LoadDB).to receive(:update_db).with("9132815", "1503031103", "https://www.unrealengine.com/blog/ue4-is-free", "Unreal Engine 4 is now available to everyone for free")
      expect(LoadDB).to receive(:update_db).with("9132815", "1503031104", "https://www.unrealengine.com/blog/ue4-is-free", "Unreal Engine 4 is now available to everyone for free")
      expect(LoadDB).to receive(:update_db).with("9132815", "1503031105", "https://www.unrealengine.com/blog/ue4-is-free", "Unreal Engine 4 is now available to everyone for free")
      expect(LoadDB).to receive(:update_db).with("9132815", "1503031106", "https://www.unrealengine.com/blog/ue4-is-free", "Unreal Engine 4 is now available to everyone for free")
      expect(LoadDB).to receive(:update_db).with("9132815", "1503031107", "https://www.unrealengine.com/blog/ue4-is-free", "Unreal Engine 4 is now available to everyone for free")
      expect(LoadDB).to receive(:update_db).with("9132815", "1503031108", "https://www.unrealengine.com/blog/ue4-is-free", "Unreal Engine 4 is now available to everyone for free")
      expect(LoadDB).to receive(:update_db).with("9132815", "1503031109", "https://www.unrealengine.com/blog/ue4-is-free", "Unreal Engine 4 is now available to everyone for free")
      expect(LoadDB).to receive(:update_db).with("9132815", "1503031110", "https://www.unrealengine.com/blog/ue4-is-free", "Unreal Engine 4 is now available to everyone for free")
      expect(LoadDB).to receive(:update_db).with("9132815", "1503031111", "https://www.unrealengine.com/blog/ue4-is-free", "Unreal Engine 4 is now available to everyone for free")
      expect(LoadDB).to receive(:update_db).with("9132815", "1503031112", "https://www.unrealengine.com/blog/ue4-is-free", "Unreal Engine 4 is now available to everyone for free")
      expect(LoadDB).to receive(:update_db).with("9132815", "1503031113", "https://www.unrealengine.com/blog/ue4-is-free", "Unreal Engine 4 is now available to everyone for free")
      LoadDB.load(Fixtures_directory)
      reset_fixtures_directory_contents Fixtures_directory
    end
    it "will exercise the exception catching capabilities of LoadDB.load" do
      date = '1503031113'
      dir = Dir.mktmpdir
      filename = "#{dir}/news.#{date}.gz"
      FileUtils.touch filename
      allow(LoadDB).to receive(:parse_date) { raise Errno::ENOENT }
      tty = `tty`.chomp!
      Tempfile.create('foobarstuff') do |tmpfile|
        $stderr.reopen(tmpfile, "w")
        LoadDB.load(dir)
        $stderr.reopen(tty, "w")
        tmpfile_contents = File.readlines(tmpfile)
        expect(tmpfile_contents.first).to match /^Missing filename /
      end
    end
  end
  describe "LoadDB.make_time" do
    it "simple date conversion" do
      expect(LoadDB.make_time('1410120834')).to eq Time.new(2014, 10, 12, 8, 34, 0)
    end
    it "should probably explode" do
      expect { LoadDB.make_time('1410120899') }.to raise_exception
    end
  end

  describe "LoadDB.open_and_read_file" do
    it "should throw and Errno::ENOENT when the file isn't compressed and it doesn't exist" do
      expect { LoadDB.open_and_read_file('news.1501010101') }.to raise_exception(Errno::ENOENT)
    end
    # XXX this is wrong; if the file doesn't exist the same exception should be thrown irrespective of the file name.
    it "should throw and HackerNews::NothingToRead when the file name ends with .gz but the file doesn't exist" do
      expect { LoadDB.open_and_read_file('news.1501010101.gz') }.to raise_exception(HackerNews::NothingToRead)
    end
  end

  describe "LoadDB.process_html_from_hacker_news" do
    it "should throw an exception because the html wasn't able to to be parsed" do
      expect{ LoadDB.process_html_from_hacker_news("a") }.to raise_exception(HackerNews::ElementNotFound)
    end
  end

  context "Test behaviour of file processing" do
    let(:date)     { '1501111201' }
    let(:dir)      { Dir.mktmpdir }
    let(:filename) { "#{dir}/news.#{date}.gz" }
    it "should return a list containing a single file" do
      FileUtils.touch filename
      expect(LoadDB.valid_name(filename)).to be true
      expect(LoadDB.parse_date(filename)).to eq date
      files = LoadDB.files(dir)
      expect(files.length).to eq 1
      expect(files.first).to eq filename
    end
    it "when gunzip fails an empty list should be returned" do
      FileUtils.touch filename
      expect(LoadDB.openfile(filename).readlines).to eq []
    end
  end

end


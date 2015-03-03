
require 'load_db'

Fixtures_directory = File.expand_path('test/fixture/load_html/downloads')

describe 'LoadDB.files' do

  it 'will check that the fixtures directory exists' do
    expect(Dir.exists?(Fixtures_directory)).to be true 
  end
  it 'should return a list of files matching news.*gz' do
    expect(LoadDB.files(Fixtures_directory).first).to eq Fixtures_directory + '/news.1503031100.gz'
  end
end

describe 'LoadDB.valid_name' do
  it 'should be invalid because of missing prefix' do
    expect(LoadDB.valid_name('missing.1234567890')).to_not be true
  end
  it 'should be invalid because of missing/invalid date' do
    expect(LoadDB.valid_name('news.150303222')).to_not be true
  end
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
end

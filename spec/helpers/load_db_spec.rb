
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

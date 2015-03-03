
require 'load_db'


describe 'LoadDB.files' do
  before(:all) { @fixtures_directory = File.expand_path('test/fixture/load_html/downloads') }

  it 'will check that the fixtures directory exists' do
    expect(Dir.exists?(@fixtures_directory)).to be true 
  end
  it 'should return a list of files matching news.*gz' do
    expect(LoadDB.files(@fixtures_directory).first).to eq @fixtures_directory + '/news.1503031100.gz'
  end
end

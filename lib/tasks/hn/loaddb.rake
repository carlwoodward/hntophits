# vim ft=ruby

desc "Load the dev database from the files in the fixtures directory"
namespace :hn do
  task :load_from_fixtures => :environment do
    LoadDB.load('./test/fixture/load_html/downloads')
  end
end

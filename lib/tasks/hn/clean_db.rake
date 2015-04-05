# vim ft=ruby

desc "Load the dev database from the files in the fixtures directory"
namespace :hn do
  task :clean_db => :environment do
    Story.delete_all
    TopHit.delete_all
  end
end

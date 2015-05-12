# vim ft=ruby

desc "Remove entries from tables in dev"
namespace :hn do
  task :clean_db => :environment do
    Story.delete_all
    TopHit.delete_all
  end
end

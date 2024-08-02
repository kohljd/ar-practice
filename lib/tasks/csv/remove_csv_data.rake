require "csv"

namespace :csv do
  namespace :destroy do
    desc "Remove all data from CSV's"
    task everything: :environment do
      Breed.destroy_all
      puts "Breeds & dogs destroyed"
      Owner.destroy_all
      puts "Owners destroyed"
    end
  end
end

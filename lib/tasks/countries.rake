require 'csv'
namespace :countries do
  desc "pull accurate continents and country data into database"
  task seed_countries: :environment do
    #drop the old table data before importing the new stuff
    Country.destroy_all
    
    CSV.foreach("lib/assets/Countries-Continents.csv", :headers =>false) do |row |
      puts row.inspect #just so that we know the file's being read

      #create new model instances with the data
      Country.create!(
        continent: row[0],
        country: row[1]
    )
    end
  end

end

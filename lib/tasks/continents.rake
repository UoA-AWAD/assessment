require 'csv'
namespace :continents do
  desc "pull worlddata into database"
  task seed_continents: :environment do

    #drop the old table data before importing the new stuff
    Continent.destroy_all
    
    CSV.foreach("lib/assets/Socio-Economic_Baseline_Data.csv", :headers =>false) do |row |
      puts row.inspect #just so that we know the file's being read

      #create new model instances with the data
      Continent.create!(
      Country: row[1],
      Population: row[2].to_i,
      Population_density: row[3].to_i,
      Urban_population: row[5].to_i,
      Urban_population_coastal: row[6].to_i,
      GDP_per_capita: row[7].to_i,
      Land_area: row[12].to_i,
      Cropland_area: row[13].to_i,
      Pasture_area: row[14].to_i,
      Water_per_capita: row[17].to_i,
      Commercial_energy_consumption: row[31].to_i,
      Traditional_fuel_consumption: row[32].to_i,
      Commercial_hydroelectric_consumption: row[33].to_i
    )
    end
  end
end

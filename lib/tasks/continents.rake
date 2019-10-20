require 'csv'
namespace :continents do
  desc "pull worlddata into database"
  task seed_continents: :environment do

    #drop the old table data before importing the new stuff
    Continent.destroy_all
    Emission.destroy_all
    
    CSV.foreach("lib/assets/Socio-Economic_Baseline_Data.csv", :headers =>false) do |row|
      puts row.inspect #just so that we know the file's being read

      #create new model instances with the data
      Continent.create!(
      Continent: row[0],
      Country: row[1].to_s,
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

    CSV.foreach("lib/assets/CAIT Country CO2 Emissions.csv", :headers =>false) do |row|
      puts row.inspect #just so that we know the file's being read

      country_temp = row[0].to_s
      continent_new = Continent.where(["continents.Country = ?", country_temp])
      continent_new = continent_new[0]

      #create new model instances with the data
      Emission.create!(
      continent_id: continent_new.id,
      year: row[1].to_i,
      pollution: row[2].to_f,
      )
    end
  end
end

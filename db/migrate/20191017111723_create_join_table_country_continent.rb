class CreateJoinTableCountryContinent < ActiveRecord::Migration[5.2]
  def join
    Country.joins("INNER JOIN continents ON continents.Country = countries.country").select("countries.*, continents.*")
  end
end

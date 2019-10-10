class CreateContinents < ActiveRecord::Migration[5.2]
  def change
    create_table :continents do |t|
      t.string :Continent
      t.string :Country
      t.integer :Population
      t.integer :Population_density
      t.integer :Urban_population
      t.integer :Urban_population_coastal
      t.integer :GDP_per_capita
      t.integer :Land_area
      t.integer :Cropland_area
      t.integer :Pasture_area
      t.integer :Water_per_capita
      t.integer :Commercial_energy_consumption
      t.integer :Traditional_fuel_consumption
      t.integer :Commercial_hydroelectric_consumption

      t.timestamps
    end
  end
end

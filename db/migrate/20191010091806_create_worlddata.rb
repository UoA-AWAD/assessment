class CreateWorlddata < ActiveRecord::Migration[5.2]
  def change
    create_table :worlddata do |t|
      t.string :Continent
      t.string :Country
      t.integer :Population
      t.integer :Population_Density
      t.integer :Uban_pop
      t.integer :Uban_pop_coastal
      t.integer :GDP_per_capita
      t.integer :Land_Area
      t.integer :Cropland
      t.integer :Pasture
      t.integer :Water_per_capita
      t.integer :Commercial_Energy_Consumption
      t.integer :Traditional_Fuel_Consumption
      t.integer :Commercial_Hydroelec_Consumption

      t.timestamps
    end
  end
end

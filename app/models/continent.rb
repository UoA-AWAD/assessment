class Continent < ApplicationRecord
    validates :Continent, :Country, :Population, :Population_density, :Urban_population, :Urban_population_coastal, :GDP_per_capita, :Land_area, :Cropland_area, :Pasture_area, :Water_per_capita, :Commercial_energy_consumption, :Traditional_fuel_consumption, :Commercial_hydroelectric_consumption, presence: true
end

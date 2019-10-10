require "application_system_test_case"

class ContinentsTest < ApplicationSystemTestCase
  setup do
    @continent = continents(:one)
  end

  test "visiting the index" do
    visit continents_url
    assert_selector "h1", text: "Continents"
  end

  test "creating a Continent" do
    visit continents_url
    click_on "New Continent"

    fill_in "Commercial energy consumption", with: @continent.Commercial_energy_consumption
    fill_in "Commercial hydroelectric consumption", with: @continent.Commercial_hydroelectric_consumption
    fill_in "Continent", with: @continent.Continent
    fill_in "Country", with: @continent.Country
    fill_in "Cropland area", with: @continent.Cropland_area
    fill_in "Gdp per capita", with: @continent.GDP_per_capita
    fill_in "Land area", with: @continent.Land_area
    fill_in "Pasture area", with: @continent.Pasture_area
    fill_in "Population", with: @continent.Population
    fill_in "Population density", with: @continent.Population_density
    fill_in "Traditional fuel consumption", with: @continent.Traditional_fuel_consumption
    fill_in "Urban population", with: @continent.Urban_population
    fill_in "Urban population coastal", with: @continent.Urban_population_coastal
    fill_in "Water per capita", with: @continent.Water_per_capita
    click_on "Create Continent"

    assert_text "Continent was successfully created"
    click_on "Back"
  end

  test "updating a Continent" do
    visit continents_url
    click_on "Edit", match: :first

    fill_in "Commercial energy consumption", with: @continent.Commercial_energy_consumption
    fill_in "Commercial hydroelectric consumption", with: @continent.Commercial_hydroelectric_consumption
    fill_in "Continent", with: @continent.Continent
    fill_in "Country", with: @continent.Country
    fill_in "Cropland area", with: @continent.Cropland_area
    fill_in "Gdp per capita", with: @continent.GDP_per_capita
    fill_in "Land area", with: @continent.Land_area
    fill_in "Pasture area", with: @continent.Pasture_area
    fill_in "Population", with: @continent.Population
    fill_in "Population density", with: @continent.Population_density
    fill_in "Traditional fuel consumption", with: @continent.Traditional_fuel_consumption
    fill_in "Urban population", with: @continent.Urban_population
    fill_in "Urban population coastal", with: @continent.Urban_population_coastal
    fill_in "Water per capita", with: @continent.Water_per_capita
    click_on "Update Continent"

    assert_text "Continent was successfully updated"
    click_on "Back"
  end

  test "destroying a Continent" do
    visit continents_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Continent was successfully destroyed"
  end
end

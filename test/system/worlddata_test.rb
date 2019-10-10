require "application_system_test_case"

class WorlddataTest < ApplicationSystemTestCase
  setup do
    @worlddatum = worlddata(:one)
  end

  test "visiting the index" do
    visit worlddata_url
    assert_selector "h1", text: "Worlddata"
  end

  test "creating a Worlddatum" do
    visit worlddata_url
    click_on "New Worlddatum"

    fill_in "Commercial energy consumption", with: @worlddatum.Commercial_Energy_Consumption
    fill_in "Commercial hydroelec consumption", with: @worlddatum.Commercial_Hydroelec_Consumption
    fill_in "Continent", with: @worlddatum.Continent
    fill_in "Country", with: @worlddatum.Country
    fill_in "Cropland", with: @worlddatum.Cropland
    fill_in "Gdp per capita", with: @worlddatum.GDP_per_capita
    fill_in "Land area", with: @worlddatum.Land_Area
    fill_in "Pasture", with: @worlddatum.Pasture
    fill_in "Population", with: @worlddatum.Population
    fill_in "Population density", with: @worlddatum.Population_Density
    fill_in "Traditional fuel consumption", with: @worlddatum.Traditional_Fuel_Consumption
    fill_in "Uban pop", with: @worlddatum.Uban_pop
    fill_in "Uban pop coastal", with: @worlddatum.Uban_pop_coastal
    fill_in "Water per capita", with: @worlddatum.Water_per_capita
    click_on "Create Worlddatum"

    assert_text "Worlddatum was successfully created"
    click_on "Back"
  end

  test "updating a Worlddatum" do
    visit worlddata_url
    click_on "Edit", match: :first

    fill_in "Commercial energy consumption", with: @worlddatum.Commercial_Energy_Consumption
    fill_in "Commercial hydroelec consumption", with: @worlddatum.Commercial_Hydroelec_Consumption
    fill_in "Continent", with: @worlddatum.Continent
    fill_in "Country", with: @worlddatum.Country
    fill_in "Cropland", with: @worlddatum.Cropland
    fill_in "Gdp per capita", with: @worlddatum.GDP_per_capita
    fill_in "Land area", with: @worlddatum.Land_Area
    fill_in "Pasture", with: @worlddatum.Pasture
    fill_in "Population", with: @worlddatum.Population
    fill_in "Population density", with: @worlddatum.Population_Density
    fill_in "Traditional fuel consumption", with: @worlddatum.Traditional_Fuel_Consumption
    fill_in "Uban pop", with: @worlddatum.Uban_pop
    fill_in "Uban pop coastal", with: @worlddatum.Uban_pop_coastal
    fill_in "Water per capita", with: @worlddatum.Water_per_capita
    click_on "Update Worlddatum"

    assert_text "Worlddatum was successfully updated"
    click_on "Back"
  end

  test "destroying a Worlddatum" do
    visit worlddata_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Worlddatum was successfully destroyed"
  end
end

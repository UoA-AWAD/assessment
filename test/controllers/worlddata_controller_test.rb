require 'test_helper'

class WorlddataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @worlddatum = worlddata(:one)
  end

  test "should get index" do
    get worlddata_url
    assert_response :success
  end

  test "should get new" do
    get new_worlddatum_url
    assert_response :success
  end

  test "should create worlddatum" do
    assert_difference('Worlddatum.count') do
      post worlddata_url, params: { worlddatum: { Commercial_Energy_Consumption: @worlddatum.Commercial_Energy_Consumption, Commercial_Hydroelec_Consumption: @worlddatum.Commercial_Hydroelec_Consumption, Continent: @worlddatum.Continent, Country: @worlddatum.Country, Cropland: @worlddatum.Cropland, GDP_per_capita: @worlddatum.GDP_per_capita, Land_Area: @worlddatum.Land_Area, Pasture: @worlddatum.Pasture, Population: @worlddatum.Population, Population_Density: @worlddatum.Population_Density, Traditional_Fuel_Consumption: @worlddatum.Traditional_Fuel_Consumption, Uban_pop: @worlddatum.Uban_pop, Uban_pop_coastal: @worlddatum.Uban_pop_coastal, Water_per_capita: @worlddatum.Water_per_capita } }
    end

    assert_redirected_to worlddatum_url(Worlddatum.last)
  end

  test "should show worlddatum" do
    get worlddatum_url(@worlddatum)
    assert_response :success
  end

  test "should get edit" do
    get edit_worlddatum_url(@worlddatum)
    assert_response :success
  end

  test "should update worlddatum" do
    patch worlddatum_url(@worlddatum), params: { worlddatum: { Commercial_Energy_Consumption: @worlddatum.Commercial_Energy_Consumption, Commercial_Hydroelec_Consumption: @worlddatum.Commercial_Hydroelec_Consumption, Continent: @worlddatum.Continent, Country: @worlddatum.Country, Cropland: @worlddatum.Cropland, GDP_per_capita: @worlddatum.GDP_per_capita, Land_Area: @worlddatum.Land_Area, Pasture: @worlddatum.Pasture, Population: @worlddatum.Population, Population_Density: @worlddatum.Population_Density, Traditional_Fuel_Consumption: @worlddatum.Traditional_Fuel_Consumption, Uban_pop: @worlddatum.Uban_pop, Uban_pop_coastal: @worlddatum.Uban_pop_coastal, Water_per_capita: @worlddatum.Water_per_capita } }
    assert_redirected_to worlddatum_url(@worlddatum)
  end

  test "should destroy worlddatum" do
    assert_difference('Worlddatum.count', -1) do
      delete worlddatum_url(@worlddatum)
    end

    assert_redirected_to worlddata_url
  end
end

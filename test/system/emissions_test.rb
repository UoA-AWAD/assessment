require "application_system_test_case"

class EmissionsTest < ApplicationSystemTestCase
  setup do
    @emission = emissions(:one)
  end

  test "visiting the index" do
    visit emissions_url
    assert_selector "h1", text: "Emissions"
  end

  test "creating a Emission" do
    visit emissions_url
    click_on "New Emission"

    fill_in "Continent", with: @emission.continent_id
    fill_in "Pollution", with: @emission.pollution
    fill_in "Year", with: @emission.year
    click_on "Create Emission"

    assert_text "Emission was successfully created"
    click_on "Back"
  end

  test "updating a Emission" do
    visit emissions_url
    click_on "Edit", match: :first

    fill_in "Continent", with: @emission.continent_id
    fill_in "Pollution", with: @emission.pollution
    fill_in "Year", with: @emission.year
    click_on "Update Emission"

    assert_text "Emission was successfully updated"
    click_on "Back"
  end

  test "destroying a Emission" do
    visit emissions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Emission was successfully destroyed"
  end
end

require "application_system_test_case"

class AllBeersTest < ApplicationSystemTestCase
  setup do
    @all_beer = all_beers(:one)
  end

  test "visiting the index" do
    visit all_beers_url
    assert_selector "h1", text: "All Beers"
  end

  test "creating a All beer" do
    visit all_beers_url
    click_on "New All Beer"

    fill_in "Address", with: @all_beer.address
    fill_in "Categories", with: @all_beer.categories
    fill_in "City", with: @all_beer.city
    fill_in "Latitude", with: @all_beer.latitude
    fill_in "Longitude", with: @all_beer.longitude
    fill_in "Name", with: @all_beer.name
    fill_in "Postalcode", with: @all_beer.postalCode
    fill_in "Province", with: @all_beer.province
    fill_in "Twitter", with: @all_beer.twitter
    fill_in "Websites", with: @all_beer.websites
    click_on "Create All beer"

    assert_text "All beer was successfully created"
    click_on "Back"
  end

  test "updating a All beer" do
    visit all_beers_url
    click_on "Edit", match: :first

    fill_in "Address", with: @all_beer.address
    fill_in "Categories", with: @all_beer.categories
    fill_in "City", with: @all_beer.city
    fill_in "Latitude", with: @all_beer.latitude
    fill_in "Longitude", with: @all_beer.longitude
    fill_in "Name", with: @all_beer.name
    fill_in "Postalcode", with: @all_beer.postalCode
    fill_in "Province", with: @all_beer.province
    fill_in "Twitter", with: @all_beer.twitter
    fill_in "Websites", with: @all_beer.websites
    click_on "Update All beer"

    assert_text "All beer was successfully updated"
    click_on "Back"
  end

  test "destroying a All beer" do
    visit all_beers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "All beer was successfully destroyed"
  end
end

require 'test_helper'

class AllBeersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @all_beer = all_beers(:one)
  end

  test "should get index" do
    get all_beers_url
    assert_response :success
  end

  test "should get new" do
    get new_all_beer_url
    assert_response :success
  end

  test "should create all_beer" do
    assert_difference('AllBeer.count') do
      post all_beers_url, params: { all_beer: { address: @all_beer.address, categories: @all_beer.categories, city: @all_beer.city, latitude: @all_beer.latitude, longitude: @all_beer.longitude, name: @all_beer.name, postalCode: @all_beer.postalCode, province: @all_beer.province, twitter: @all_beer.twitter, websites: @all_beer.websites } }
    end

    assert_redirected_to all_beer_url(AllBeer.last)
  end

  test "should show all_beer" do
    get all_beer_url(@all_beer)
    assert_response :success
  end

  test "should get edit" do
    get edit_all_beer_url(@all_beer)
    assert_response :success
  end

  test "should update all_beer" do
    patch all_beer_url(@all_beer), params: { all_beer: { address: @all_beer.address, categories: @all_beer.categories, city: @all_beer.city, latitude: @all_beer.latitude, longitude: @all_beer.longitude, name: @all_beer.name, postalCode: @all_beer.postalCode, province: @all_beer.province, twitter: @all_beer.twitter, websites: @all_beer.websites } }
    assert_redirected_to all_beer_url(@all_beer)
  end

  test "should destroy all_beer" do
    assert_difference('AllBeer.count', -1) do
      delete all_beer_url(@all_beer)
    end

    assert_redirected_to all_beers_url
  end
end

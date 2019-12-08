require 'test_helper'

class BeerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get beer_index_url
    assert_response :success
  end

end

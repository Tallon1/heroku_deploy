require "test_helper"

class MapsControllerTest < ActionDispatch::IntegrationTest
  test "should get map" do
    get maps_map_url
    assert_response :success
  end
end

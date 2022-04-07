require "test_helper"

class WeatherControllerTest < ActionDispatch::IntegrationTest
  test "should get _weather" do
    get weather__weather_url
    assert_response :success
  end
end

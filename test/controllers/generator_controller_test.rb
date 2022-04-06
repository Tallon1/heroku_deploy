require "test_helper"

class GeneratorControllerTest < ActionDispatch::IntegrationTest
  test "should get generate" do
    get generator_generate_url
    assert_response :success
  end
end

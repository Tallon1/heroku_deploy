require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end
  
  test "try to find unknown room via url" do
    get '/test'
    assert_response :success
  end

  test "should get main rooms page" do
    get '/rooms'
    assert_response :success
end

# require "test_helper"

# class InvalidRegistrationToken < ActionDispatch::IntegrationTest
#   test "try to register new user without a legit login" do
#     @user = users(:one)
#     get '/users/sign_up'
#     assert_response :success

#     post users_url, params: {user: {email: @user.email}}
#     assert_equal '/users', path
#     assert_select 'li', "Password can't' be blank"
#   end
# end
require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "Shouldn't save user without password" do
    user = User.new
    assert user.save
  end
end
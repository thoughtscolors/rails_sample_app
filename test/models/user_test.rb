require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "User 1", email: "user1@user.com")
  end

  test 'user should be valid' do
    assert @user.valid?
  end
end

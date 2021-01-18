require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get portfolio" do
    get users_portfolio_url
    assert_response :success
  end

end

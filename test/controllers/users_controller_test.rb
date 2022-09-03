require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test 'should get general_shopping_list' do
    get users_general_shopping_list_url
    assert_response :success
  end
end

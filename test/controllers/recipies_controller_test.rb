require "test_helper"

class RecipiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get recipies_index_url
    assert_response :success
  end

  test "should get public_recipes" do
    get recipies_public_recipes_url
    assert_response :success
  end
end

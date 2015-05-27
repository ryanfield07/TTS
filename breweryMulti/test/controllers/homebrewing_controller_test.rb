require 'test_helper'

class HomebrewingControllerTest < ActionController::TestCase
  test "should get beers" do
    get :beers
    assert_response :success
  end

  test "should get recipes" do
    get :recipes
    assert_response :success
  end

end

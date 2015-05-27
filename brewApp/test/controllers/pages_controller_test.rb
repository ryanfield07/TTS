require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get beerLog" do
    get :beerLog
    assert_response :success
  end

  test "should get recipeLog" do
    get :recipeLog
    assert_response :success
  end

end

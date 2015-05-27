require 'test_helper'

class MarlblesControllerTest < ActionController::TestCase
  setup do
    @marlble = marlbles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:marlbles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create marlble" do
    assert_difference('Marlble.count') do
      post :create, marlble: { color: @marlble.color, name: @marlble.name, person_id: @marlble.person_id }
    end

    assert_redirected_to marlble_path(assigns(:marlble))
  end

  test "should show marlble" do
    get :show, id: @marlble
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @marlble
    assert_response :success
  end

  test "should update marlble" do
    patch :update, id: @marlble, marlble: { color: @marlble.color, name: @marlble.name, person_id: @marlble.person_id }
    assert_redirected_to marlble_path(assigns(:marlble))
  end

  test "should destroy marlble" do
    assert_difference('Marlble.count', -1) do
      delete :destroy, id: @marlble
    end

    assert_redirected_to marlbles_path
  end
end

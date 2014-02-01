require 'test_helper'

class ProfilemastersControllerTest < ActionController::TestCase
  setup do
    @profilemaster = profilemasters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profilemasters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profilemaster" do
    assert_difference('Profilemaster.count') do
      post :create, profilemaster: { profile_name: @profilemaster.profile_name }
    end

    assert_redirected_to profilemaster_path(assigns(:profilemaster))
  end

  test "should show profilemaster" do
    get :show, id: @profilemaster
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profilemaster
    assert_response :success
  end

  test "should update profilemaster" do
    put :update, id: @profilemaster, profilemaster: { profile_name: @profilemaster.profile_name }
    assert_redirected_to profilemaster_path(assigns(:profilemaster))
  end

  test "should destroy profilemaster" do
    assert_difference('Profilemaster.count', -1) do
      delete :destroy, id: @profilemaster
    end

    assert_redirected_to profilemasters_path
  end
end

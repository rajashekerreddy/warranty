require 'test_helper'

class ChildmastersControllerTest < ActionController::TestCase
  setup do
    @childmaster = childmasters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:childmasters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create childmaster" do
    assert_difference('Childmaster.count') do
      post :create, childmaster: { edit: @childmaster.edit, forms: @childmaster.forms, new: @childmaster.new, profilemaster_id: @childmaster.profilemaster_id, remove: @childmaster.remove, view: @childmaster.view }
    end

    assert_redirected_to childmaster_path(assigns(:childmaster))
  end

  test "should show childmaster" do
    get :show, id: @childmaster
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @childmaster
    assert_response :success
  end

  test "should update childmaster" do
    put :update, id: @childmaster, childmaster: { edit: @childmaster.edit, forms: @childmaster.forms, new: @childmaster.new, profilemaster_id: @childmaster.profilemaster_id, remove: @childmaster.remove, view: @childmaster.view }
    assert_redirected_to childmaster_path(assigns(:childmaster))
  end

  test "should destroy childmaster" do
    assert_difference('Childmaster.count', -1) do
      delete :destroy, id: @childmaster
    end

    assert_redirected_to childmasters_path
  end
end

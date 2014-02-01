require 'test_helper'

class PapclipsControllerTest < ActionController::TestCase
  setup do
    @papclip = papclips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:papclips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create papclip" do
    assert_difference('Papclip.count') do
      post :create, papclip: { files: @papclip.files }
    end

    assert_redirected_to papclip_path(assigns(:papclip))
  end

  test "should show papclip" do
    get :show, id: @papclip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @papclip
    assert_response :success
  end

  test "should update papclip" do
    put :update, id: @papclip, papclip: { files: @papclip.files }
    assert_redirected_to papclip_path(assigns(:papclip))
  end

  test "should destroy papclip" do
    assert_difference('Papclip.count', -1) do
      delete :destroy, id: @papclip
    end

    assert_redirected_to papclips_path
  end
end

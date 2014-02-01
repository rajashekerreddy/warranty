require 'test_helper'

class GtplsControllerTest < ActionController::TestCase
  setup do
    @gtpl = gtpls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gtpls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gtpl" do
    assert_difference('Gtpl.count') do
      post :create, gtpl: { attributes: @gtpl.attributes }
    end

    assert_redirected_to gtpl_path(assigns(:gtpl))
  end

  test "should show gtpl" do
    get :show, id: @gtpl
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gtpl
    assert_response :success
  end

  test "should update gtpl" do
    put :update, id: @gtpl, gtpl: { attributes: @gtpl.attributes }
    assert_redirected_to gtpl_path(assigns(:gtpl))
  end

  test "should destroy gtpl" do
    assert_difference('Gtpl.count', -1) do
      delete :destroy, id: @gtpl
    end

    assert_redirected_to gtpls_path
  end
end

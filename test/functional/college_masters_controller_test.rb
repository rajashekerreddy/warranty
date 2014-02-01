require 'test_helper'

class CollegeMastersControllerTest < ActionController::TestCase
  setup do
    @college_master = college_masters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:college_masters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create college_master" do
    assert_difference('CollegeMaster.count') do
      post :create, college_master: { address: @college_master.address, category: @college_master.category, college_code: @college_master.college_code, college_name: @college_master.college_name, mobile_no: @college_master.mobile_no, ph_no: @college_master.ph_no }
    end

    assert_redirected_to college_master_path(assigns(:college_master))
  end

  test "should show college_master" do
    get :show, id: @college_master
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @college_master
    assert_response :success
  end

  test "should update college_master" do
    put :update, id: @college_master, college_master: { address: @college_master.address, category: @college_master.category, college_code: @college_master.college_code, college_name: @college_master.college_name, mobile_no: @college_master.mobile_no, ph_no: @college_master.ph_no }
    assert_redirected_to college_master_path(assigns(:college_master))
  end

  test "should destroy college_master" do
    assert_difference('CollegeMaster.count', -1) do
      delete :destroy, id: @college_master
    end

    assert_redirected_to college_masters_path
  end
end

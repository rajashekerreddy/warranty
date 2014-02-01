require 'test_helper'

class CollegeFeesControllerTest < ActionController::TestCase
  setup do
    @college_fee = college_fees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:college_fees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create college_fee" do
    assert_difference('CollegeFee.count') do
      post :create, college_fee: { bill_date_time: @college_fee.bill_date_time, hall_no: @college_fee.hall_no, last_paid_amt: @college_fee.last_paid_amt, this_time_pay: @college_fee.this_time_pay, till_now_paid: @college_fee.till_now_paid }
    end

    assert_redirected_to college_fee_path(assigns(:college_fee))
  end

  test "should show college_fee" do
    get :show, id: @college_fee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @college_fee
    assert_response :success
  end

  test "should update college_fee" do
    put :update, id: @college_fee, college_fee: { bill_date_time: @college_fee.bill_date_time, hall_no: @college_fee.hall_no, last_paid_amt: @college_fee.last_paid_amt, this_time_pay: @college_fee.this_time_pay, till_now_paid: @college_fee.till_now_paid }
    assert_redirected_to college_fee_path(assigns(:college_fee))
  end

  test "should destroy college_fee" do
    assert_difference('CollegeFee.count', -1) do
      delete :destroy, id: @college_fee
    end

    assert_redirected_to college_fees_path
  end
end

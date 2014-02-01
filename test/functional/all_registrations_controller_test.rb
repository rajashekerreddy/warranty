require 'test_helper'

class AllRegistrationsControllerTest < ActionController::TestCase
  setup do
    @all_registration = all_registrations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:all_registrations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create all_registration" do
    assert_difference('AllRegistration.count') do
      post :create, all_registration: { address: @all_registration.address, age: @all_registration.age, category: @all_registration.category, city: @all_registration.city, country: @all_registration.country, dob: @all_registration.dob, father_name: @all_registration.father_name, first_name: @all_registration.first_name, gender: @all_registration.gender, group: @all_registration.group, hall_ticket: @all_registration.hall_ticket, last_name: @all_registration.last_name, ph_no: @all_registration.ph_no, pincode: @all_registration.pincode, reg_fee: @all_registration.reg_fee, reg_no: @all_registration.reg_no, roll_no: @all_registration.roll_no, state: @all_registration.state, year: @all_registration.year }
    end

    assert_redirected_to all_registration_path(assigns(:all_registration))
  end

  test "should show all_registration" do
    get :show, id: @all_registration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @all_registration
    assert_response :success
  end

  test "should update all_registration" do
    put :update, id: @all_registration, all_registration: { address: @all_registration.address, age: @all_registration.age, category: @all_registration.category, city: @all_registration.city, country: @all_registration.country, dob: @all_registration.dob, father_name: @all_registration.father_name, first_name: @all_registration.first_name, gender: @all_registration.gender, group: @all_registration.group, hall_ticket: @all_registration.hall_ticket, last_name: @all_registration.last_name, ph_no: @all_registration.ph_no, pincode: @all_registration.pincode, reg_fee: @all_registration.reg_fee, reg_no: @all_registration.reg_no, roll_no: @all_registration.roll_no, state: @all_registration.state, year: @all_registration.year }
    assert_redirected_to all_registration_path(assigns(:all_registration))
  end

  test "should destroy all_registration" do
    assert_difference('AllRegistration.count', -1) do
      delete :destroy, id: @all_registration
    end

    assert_redirected_to all_registrations_path
  end
end

require 'fabrication'
class AllRegistration < ActiveRecord::Base
  attr_accessible :address, :age, :city, :country, :dob, :father_name, :first_name, :gender, :hall_ticket, :last_name, :ph_no, :pincode, :reg_fee, :reg_no, :roll_no, :state, :reg_date
  has_many :all_registration_children
  has_many :attendence_children
  has_many :move_class_children
  has_many :image_tables, :as => :parent
  def add(a,b)
  	a+b
  end

  def test_that_kitty_can_eat
    return "OHAI!"
  end

end
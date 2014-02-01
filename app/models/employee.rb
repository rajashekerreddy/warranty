class Employee < ActiveRecord::Base
  attr_accessible :adress, :designation, :emp_id, :emp_name, :salary, :salary_type, :dob, :reg_date
end

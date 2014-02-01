class CollegeFee < ActiveRecord::Base
  attr_accessible :bill_date_time, :hall_no, :last_paid_amt, :this_time_pay, :till_now_paid
end

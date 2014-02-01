class AttendenceChild < ActiveRecord::Base
  attr_accessible :all_registration_id, :presence, :year, :subject, :group, :semester, :att_date
  belongs_to :all_registration
end

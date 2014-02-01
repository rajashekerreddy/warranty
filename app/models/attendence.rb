class Attendence < ActiveRecord::Base
  attr_accessible :group, :year, :subject, :presence, :att_date
  has_many :attendence_children
end

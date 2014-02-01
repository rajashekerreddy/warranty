class MoveClass < ActiveRecord::Base
  attr_accessible :semester, :group, :year, :batch, :semester
  has_many :move_class_children, :dependent => :destroy
  has_many :all_registrations, :through => :move_class_children
  scope :findgroupyearsem, lambda {|group, year, semester| {:conditions => "group='#{group}' and year='#{year}' and semester='#{semester}'"} }
end
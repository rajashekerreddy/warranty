class Subject < ActiveRecord::Base
  attr_accessible :group_id, :semester_id, :subject
  belongs_to :group
end

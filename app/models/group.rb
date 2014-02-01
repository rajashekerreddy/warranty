class Group < ActiveRecord::Base
  attr_accessible :group, :year_id
  belongs_to :year
  has_many :subjects
end

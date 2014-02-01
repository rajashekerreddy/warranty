class Year < ActiveRecord::Base
  attr_accessible :category_id, :year
  has_many :groups
  belongs_to :category
end

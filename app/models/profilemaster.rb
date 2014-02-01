class Profilemaster < ActiveRecord::Base
  attr_accessible :profile_name, :childmaster_attributes
  has_many :childmaster, :dependent => :destroy  
  accepts_nested_attributes_for :childmaster
end

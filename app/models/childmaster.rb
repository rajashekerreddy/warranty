class Childmaster < ActiveRecord::Base
  attr_accessible :edit, :forms, :new, :profilemaster_id, :remove, :view
   belongs_to :profilemaster
end

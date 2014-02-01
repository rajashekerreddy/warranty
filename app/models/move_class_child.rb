class MoveClassChild < ActiveRecord::Base
  attr_accessible :all_registration_id, :status, :group, :semester,:year
  # belongs_to :move_class
  belongs_to :all_registration
end

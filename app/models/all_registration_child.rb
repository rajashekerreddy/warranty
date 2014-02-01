class AllRegistrationChild < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :all_registration_id, :status, :group, :semester,:year
  belongs_to :all_registration
end

class CollegeMaster < ActiveRecord::Base
  attr_accessible :address, :category, :college_code, :college_name, :mobile_no, :ph_no
  validates :address, :category, :presence=> true
  #validates :category, :presence=> true
  before_save :college_code_not_be_nil

  private
   def college_code_not_be_nil
    	self.college_code = "AO1"  if self.college_code.blank?
    end
end

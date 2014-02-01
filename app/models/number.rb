class Number < ActiveRecord::Base
  attr_accessible :n_type, :start_value
   def self.retrive_value(type)
		value=Number.find_by_n_type(type)
		update_value=value.start_value+1
		value.start_value=update_value
		return type+update_value.to_s
	end

end

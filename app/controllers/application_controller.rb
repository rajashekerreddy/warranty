class ApplicationController < ActionController::Base
before_filter :authenticate_user!
before_filter :active_user
  protect_from_forgery
 def number_retrive(type)
	return Number.retrive_value(type)
 end
 def number_save(type,value)
  	n = Number.find_by_n_type(type)
	n.start_value=value
	n.update_attributes(params[:n])
 end
 def active_user
 	if current_user
 		if current_user.active.to_i!=1
         	#render "users/sing_in"
 		end
    end
 end
 def which_category
   Category.first
 end
end

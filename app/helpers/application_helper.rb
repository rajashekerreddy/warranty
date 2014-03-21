module ApplicationHelper
	def calender(field_id)
	 	return image_tag("scw.gif", :title=>"Click Here", :class=>"cal_right",:alt=>"Click Here", :onclick=>"scwShow(scwID('"+field_id+"'),event,0);") 
	end 
	def format_date(type)
		case type
		  when :short_no_year 
			Date.today.strftime("%b %d")
		  when :short
			Date.today.strftime("%d-%b-%Y")
		  when :long 
			Date.today.strftime("%B %d, %Y")
		  when :long_day_of_week
			Date.today.strftime("%a %B %d, %Y")
		  when :sort
			Date.today.strftime("%Y-%m-%d")
		  when :calendra
			Date.today.strftime("%d/%m/%Y")
		  when :date_time
		  	Time.now.strftime("%Y-%m-%d %I:%M:%S %p")
		  when :default
			Date.today.strftime("%Y/%m/%d")
		end
	end
end
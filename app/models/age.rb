require 'time'
 
Date_of_birth = '1986-08-12'
 
# Credit to : http://stackoverflow.com/questions/4136248/how-to-generate-a-human-readable-time-range-using-ruby-on-rails
# and modified a little bit
def humanize secs
  [	
  	[60, :seconds], 
  	[60, :minutes], 
  	[24, :hours], 
  	[365, :days], 
  	[100, :years]
  ].map do |count, name|
    if secs > 0
      secs, n = secs.divmod(count)
      "#{n.to_i} #{name}"
    end
  end.compact.reverse.join(' ')
end
 
loop do
	distance = Time.new - Time.parse(Date_of_birth)
	print humanize(distance)+"\r"
	sleep 1
end

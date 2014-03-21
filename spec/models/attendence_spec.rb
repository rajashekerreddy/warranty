require_relative '../spec_helper'
describe Attendence do
   before do 
   	@valid_attr = {
   		:year => '1',
   		:group => '1'
   	}
   end

	  	it "returns 0 for all gutter game" do
	    	# attendence = Attendence.last 
	    	# puts attendence.year.should == "1"
	  	end

	it "year should be one only" do
		lambda { 
          p1 = Attendence.create(@valid_attr)
          puts p1.id
          puts "ddddddddddddddd",Attendence.count
		}.should change{Attendence.count}.by(1)
	end
end
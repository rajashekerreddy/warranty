require_relative '../spec_helper'
describe Attendence do
   describe "#score" do
	  	it "returns 0 for all gutter game" do
	    	attendence = Attendence.last
	    	puts attendence.year.should == "1"
	  	end
	end  
end
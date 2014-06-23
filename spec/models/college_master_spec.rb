require_relative '../spec_helper'

describe CollegeMaster do
	before(:each) do 
		@valid_attr = {
			:address=>"azx",
			:category=>"zxc"
		}
	end
	context "Validation" do
		before do
            @coll = CollegeMaster.new
            # @coll.should_not be_valid,"kkkkkk" i didn't get
		end
	    [:address, :category].each do |attr|
		    it "its #{attr} not be null" do
                @coll.errors_on(attr).should_not be_nil
		    end
	    end

	    context "When college code nil it will save AO1" do
	    	it "default college_code is AO1" do
	    	coll = CollegeMaster.new(@valid_attr)
	    	coll.college_code.should be_blank
	    	coll.save!
	    	puts coll.college_code.should == "AO1"
	        end
	    end
	end
end

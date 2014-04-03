require_relative '../spec_helper'
gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/spec'

# describe MiniTest::Spec do
class AllRegistrationTest < ActiveSupport::TestCase
    before do
      @registraion = AllRegistration.new
    end

    	it "calling the add function" do
    		@registraion.add(2,3).must_equal 5
    	end
    	it "matches the string" do

    		@user1 = Fabricate(:all_registration, address: "shekar@gmail.com")
    		@registraion.test_that_kitty_can_eat().must_equal "OHAI!"
    		@user1.valid?.must_equal false
    	end
end
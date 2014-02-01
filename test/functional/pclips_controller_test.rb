require 'test_helper'

class PclipsControllerTest < ActionController::TestCase
  test "should get paper" do
    get :paper
    assert_response :success
  end

end

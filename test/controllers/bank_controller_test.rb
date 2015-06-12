require 'test_helper'

class BankControllerTest < ActionController::TestCase
  test "should get cartu" do
    get :cartu
    assert_response :success
  end

end

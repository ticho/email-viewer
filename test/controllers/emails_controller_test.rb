require 'test_helper'

class EmailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get "/" 
    assert_response :success
  end

end

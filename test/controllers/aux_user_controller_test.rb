require 'test_helper'

class AuxUserControllerTest < ActionDispatch::IntegrationTest
  test "should get homeUser" do
    get aux_user_homeUser_url
    assert_response :success
  end

  test "should get homeGovernor" do
    get aux_user_homeGovernor_url
    assert_response :success
  end

end

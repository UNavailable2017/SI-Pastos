require 'test_helper'

class FormControllerTest < ActionDispatch::IntegrationTest
  test "should get contactanos" do
    get form_contactanos_url
    assert_response :success
  end

end

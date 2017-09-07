require 'test_helper'

class FormControllerTest < ActionDispatch::IntegrationTest
  test "should get formulario" do
    get form_formulario_url
    assert_response :success
  end

end

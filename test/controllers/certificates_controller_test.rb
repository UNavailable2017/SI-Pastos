require 'test_helper'

class CertificatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @certificate = certificates(:one)
  end

  test 'should get index' do
    get certificates_url
    assert_response :success
  end

  test 'should get new' do
    get new_certificate_url
    assert_response :success
  end

end

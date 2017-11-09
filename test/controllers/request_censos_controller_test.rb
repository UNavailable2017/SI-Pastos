require 'test_helper'

class RequestCensosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @request_censo = request_censos(:one)
  end
end

require 'test_helper'

class HealthServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @health_service = health_services(:one)
  end
end

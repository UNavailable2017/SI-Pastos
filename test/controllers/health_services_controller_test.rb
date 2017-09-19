require 'test_helper'

class HealthServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @health_service = health_services(:one)
  end

  test "should get index" do
    get health_services_url
    assert_response :success
  end

  test "should get new" do
    get new_health_service_url
    assert_response :success
  end

  test "should create health_service" do
    assert_difference('HealthService.count') do
      post health_services_url, params: { health_service: { idHealthService: @health_service.idHealthService, name: @health_service.name } }
    end

    assert_redirected_to health_service_url(HealthService.last)
  end

  test "should show health_service" do
    get health_service_url(@health_service)
    assert_response :success
  end

  test "should get edit" do
    get edit_health_service_url(@health_service)
    assert_response :success
  end

  test "should update health_service" do
    patch health_service_url(@health_service), params: { health_service: { idHealthService: @health_service.idHealthService, name: @health_service.name } }
    assert_redirected_to health_service_url(@health_service)
  end

  test "should destroy health_service" do
    assert_difference('HealthService.count', -1) do
      delete health_service_url(@health_service)
    end

    assert_redirected_to health_services_url
  end
end

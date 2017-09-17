require 'test_helper'

class CabildosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cabildo = cabildos(:one)
  end

  test "should get index" do
    get cabildos_url
    assert_response :success
  end

  test "should get new" do
    get new_cabildo_url
    assert_response :success
  end

  test "should create cabildo" do
    assert_difference('Cabildo.count') do
      post cabildos_url, params: { cabildo: { address: @cabildo.address, name: @cabildo.name, phone: @cabildo.phone, workGroup: @cabildo.workGroup } }
    end

    assert_redirected_to cabildo_url(Cabildo.last)
  end

  test "should show cabildo" do
    get cabildo_url(@cabildo)
    assert_response :success
  end

  test "should get edit" do
    get edit_cabildo_url(@cabildo)
    assert_response :success
  end

  test "should update cabildo" do
    patch cabildo_url(@cabildo), params: { cabildo: { address: @cabildo.address, name: @cabildo.name, phone: @cabildo.phone, workGroup: @cabildo.workGroup } }
    assert_redirected_to cabildo_url(@cabildo)
  end

  test "should destroy cabildo" do
    assert_difference('Cabildo.count', -1) do
      delete cabildo_url(@cabildo)
    end

    assert_redirected_to cabildos_url
  end
end

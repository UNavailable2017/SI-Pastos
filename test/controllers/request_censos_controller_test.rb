require 'test_helper'

class RequestCensosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @request_censo = request_censos(:one)
  end

  test "should get index" do
    get request_censos_url
    assert_response :success
  end

  test "should get new" do
    get new_request_censo_url
    assert_response :success
  end

  test "should create request_censo" do
    assert_difference('RequestCenso.count') do
      post request_censos_url, params: { request_censo: { address: @request_censo.address, name: @request_censo.name, num_document: @request_censo.num_document, phone: @request_censo.phone, type_document: @request_censo.type_document } }
    end

    assert_redirected_to request_censo_url(RequestCenso.last)
  end

  test "should show request_censo" do
    get request_censo_url(@request_censo)
    assert_response :success
  end

  test "should get edit" do
    get edit_request_censo_url(@request_censo)
    assert_response :success
  end

  test "should update request_censo" do
    patch request_censo_url(@request_censo), params: { request_censo: { address: @request_censo.address, name: @request_censo.name, num_document: @request_censo.num_document, phone: @request_censo.phone, type_document: @request_censo.type_document } }
    assert_redirected_to request_censo_url(@request_censo)
  end

  test "should destroy request_censo" do
    assert_difference('RequestCenso.count', -1) do
      delete request_censo_url(@request_censo)
    end

    assert_redirected_to request_censos_url
  end
end

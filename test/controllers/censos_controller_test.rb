require 'test_helper'

class CensosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @censo = censos(:one)
  end

  test "should get index" do
    get censos_url
    assert_response :success
  end

  test "should get new" do
    get new_censo_url
    assert_response :success
  end

  test "should create censo" do
    assert_difference('Censo.count') do
      post censos_url, params: { censo: { date: @censo.date, entry: @censo.entry, levelStudies: @censo.levelStudies, numberOfChildren: @censo.numberOfChildren, originResguardo: @censo.originResguardo, person_id: @censo.person_id, profession: @censo.profession } }
    end

    assert_redirected_to censo_url(Censo.last)
  end

  test "should show censo" do
    get censo_url(@censo)
    assert_response :success
  end

  test "should get edit" do
    get edit_censo_url(@censo)
    assert_response :success
  end

  test "should update censo" do
    patch censo_url(@censo), params: { censo: { date: @censo.date, entry: @censo.entry, levelStudies: @censo.levelStudies, numberOfChildren: @censo.numberOfChildren, originResguardo: @censo.originResguardo, person_id: @censo.person_id, profession: @censo.profession } }
    assert_redirected_to censo_url(@censo)
  end

  test "should destroy censo" do
    assert_difference('Censo.count', -1) do
      delete censo_url(@censo)
    end

    assert_redirected_to censos_url
  end
end

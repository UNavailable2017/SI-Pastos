require 'test_helper'

class StatisticsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get statistics_show_url
    assert_response :success
  end

  test "should get count" do
    get statistics_count_url
    assert_response :success
  end

  test "should get get_data" do
    get statistics_get_data_url
    assert_response :success
  end

end

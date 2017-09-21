require 'test_helper'

class GovernorControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get governor_home_url
    assert_response :success
  end

  test "should get register_censo" do
    get governor_register_censo_url
    assert_response :success
  end

  test "should get find_censo" do
    get governor_find_censo_url
    assert_response :success
  end

  test "should get certificate" do
    get governor_certificate_url
    assert_response :success
  end

  test "should get publish_event" do
    get governor_publish_event_url
    assert_response :success
  end

  test "should get email" do
    get governor_email_url
    assert_response :success
  end

  test "should get map" do
    get governor_map_url
    assert_response :success
  end

  test "should get announcement" do
    get governor_announcement_url
    assert_response :success
  end

  test "should get election" do
    get governor_election_url
    assert_response :success
  end

  test "should get statistic" do
    get governor_statistic_url
    assert_response :success
  end

end

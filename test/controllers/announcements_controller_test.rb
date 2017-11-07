require 'test_helper'


class AnnouncementsControllerTest < ActionDispatch::IntegrationTest

  # include Devise::Test::ControllerHelpers
  setup do
    @announcement = announcements(:one)
    # @request.env['devise.mapping'] = Devise.mappings[:admin]
    # sign_in FactoryGirl.create(:admin)
  end

  test 'should get index' do
    get announcements_url
    assert_response :success
  end

  test 'should get new' do
    get new_announcement_url
    assert_response :success
  end

  test 'should show announcement' do
    get announcement_url(@announcement)
    assert_response :success
  end

  test 'should get edit' do
    get edit_announcement_url(@announcement)
    assert_response :success
  end

  test 'should destroy announcement' do
    assert_difference('Announcement.count', -1) do
      delete announcement_url(@announcement)
    end

    assert_redirected_to announcements_url
  end
end

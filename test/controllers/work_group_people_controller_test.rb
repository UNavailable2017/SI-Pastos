require 'test_helper'

class WorkGroupPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @work_group_person = work_group_people(:one)
  end

  test "should get index" do
    get work_group_people_url
    assert_response :success
  end

  test "should get new" do
    get new_work_group_person_url
    assert_response :success
  end

  test "should create work_group_person" do
    assert_difference('WorkGroupPerson.count') do
      post work_group_people_url, params: { work_group_person: { documentNumberPerson: @work_group_person.documentNumberPerson, idWorkGroup: @work_group_person.idWorkGroup } }
    end

    assert_redirected_to work_group_person_url(WorkGroupPerson.last)
  end

  test "should show work_group_person" do
    get work_group_person_url(@work_group_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_work_group_person_url(@work_group_person)
    assert_response :success
  end

  test "should update work_group_person" do
    patch work_group_person_url(@work_group_person), params: { work_group_person: { documentNumberPerson: @work_group_person.documentNumberPerson, idWorkGroup: @work_group_person.idWorkGroup } }
    assert_redirected_to work_group_person_url(@work_group_person)
  end

  test "should destroy work_group_person" do
    assert_difference('WorkGroupPerson.count', -1) do
      delete work_group_person_url(@work_group_person)
    end

    assert_redirected_to work_group_people_url
  end
end

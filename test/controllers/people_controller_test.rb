require 'test_helper'

class PeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person = people(:one)
  end

  test "should get index" do
    get people_url
    assert_response :success
  end

  test "should get new" do
    get new_person_url
    assert_response :success
  end

  test "should create person" do
    assert_difference('Person.count') do
      post people_url, params: { person: { age: @person.age, birthDate: @person.birthDate, civilStatus: @person.civilStatus, documentPerson: @person.documentPerson, documentType: @person.documentType, domainLanguage: @person.domainLanguage, gender: @person.gender, idGovernCenso: @person.idGovernCenso, languageDomination: @person.languageDomination, lastname: @person.lastname, mailPerson: @person.mailPerson, name: @person.name, originLanguage: @person.originLanguage, residence: @person.residence } }
    end

    assert_redirected_to person_url(Person.last)
  end

  test "should show person" do
    get person_url(@person)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_url(@person)
    assert_response :success
  end

  test "should update person" do
    patch person_url(@person), params: { person: { age: @person.age, birthDate: @person.birthDate, civilStatus: @person.civilStatus, documentPerson: @person.documentPerson, documentType: @person.documentType, domainLanguage: @person.domainLanguage, gender: @person.gender, idGovernCenso: @person.idGovernCenso, languageDomination: @person.languageDomination, lastname: @person.lastname, mailPerson: @person.mailPerson, name: @person.name, originLanguage: @person.originLanguage, residence: @person.residence } }
    assert_redirected_to person_url(@person)
  end

  test "should destroy person" do
    assert_difference('Person.count', -1) do
      delete person_url(@person)
    end

    assert_redirected_to people_url
  end
end

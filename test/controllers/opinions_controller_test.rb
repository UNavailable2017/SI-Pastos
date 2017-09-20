require 'test_helper'

class OpinionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @opinion = opinions(:one)
  end

  test "should get index" do
    get opinions_url
    assert_response :success
  end

  test "should get new" do
    get new_opinion_url
    assert_response :success
  end

  test "should create opinion" do
    assert_difference('Opinion.count') do
      post opinions_url, params: { opinion: { activitiesParticipatedBogota: @opinion.activitiesParticipatedBogota, adviceOnParticipation: @opinion.adviceOnParticipation, cabildoTrust: @opinion.cabildoTrust, censo_id: @opinion.censo_id, districtParticipation: @opinion.districtParticipation, groupsParticipation: @opinion.groupsParticipation, idOpinion: @opinion.idOpinion, ideas: @opinion.ideas, interest: @opinion.interest, reasonNoParticipation: @opinion.reasonNoParticipation, reasonParticipation: @opinion.reasonParticipation, rightsMechanisms: @opinion.rightsMechanisms, socialOrganization: @opinion.socialOrganization, training: @opinion.training, trainingTheme: @opinion.trainingTheme, trustLocalGovernment: @opinion.trustLocalGovernment, trustNationalGovernment: @opinion.trustNationalGovernment, trustONGfoundation: @opinion.trustONGfoundation, whatIsParticipating: @opinion.whatIsParticipating, workGroupDecision: @opinion.workGroupDecision } }
    end

    assert_redirected_to opinion_url(Opinion.last)
  end

  test "should show opinion" do
    get opinion_url(@opinion)
    assert_response :success
  end

  test "should get edit" do
    get edit_opinion_url(@opinion)
    assert_response :success
  end

  test "should update opinion" do
    patch opinion_url(@opinion), params: { opinion: { activitiesParticipatedBogota: @opinion.activitiesParticipatedBogota, adviceOnParticipation: @opinion.adviceOnParticipation, cabildoTrust: @opinion.cabildoTrust, censo_id: @opinion.censo_id, districtParticipation: @opinion.districtParticipation, groupsParticipation: @opinion.groupsParticipation, idOpinion: @opinion.idOpinion, ideas: @opinion.ideas, interest: @opinion.interest, reasonNoParticipation: @opinion.reasonNoParticipation, reasonParticipation: @opinion.reasonParticipation, rightsMechanisms: @opinion.rightsMechanisms, socialOrganization: @opinion.socialOrganization, training: @opinion.training, trainingTheme: @opinion.trainingTheme, trustLocalGovernment: @opinion.trustLocalGovernment, trustNationalGovernment: @opinion.trustNationalGovernment, trustONGfoundation: @opinion.trustONGfoundation, whatIsParticipating: @opinion.whatIsParticipating, workGroupDecision: @opinion.workGroupDecision } }
    assert_redirected_to opinion_url(@opinion)
  end

  test "should destroy opinion" do
    assert_difference('Opinion.count', -1) do
      delete opinion_url(@opinion)
    end

    assert_redirected_to opinions_url
  end
end

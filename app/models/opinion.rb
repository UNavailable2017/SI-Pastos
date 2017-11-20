# == Schema Information
#
# Table name: opinions
#
#  id                           :integer          not null, primary key
#  interest                     :text
#  socialOrganization           :text
#  groupsParticipation          :text
#  workGroupDecision            :text
#  ideas                        :text
#  activitiesParticipatedBogota :text
#  whatIsParticipating          :text
#  rightsMechanisms             :text
#  districtParticipation        :text
#  training                     :text
#  trainingTheme                :text
#  cabildoTrust                 :text
#  trustLocalGovernment         :text
#  trustNationalGovernment      :text
#  trustONGfoundation           :text
#  censo_id                     :integer
#  created_at                   :datetime         not null
#  updated_at                   :datetime         not null
#
class Opinion < ApplicationRecord
  belongs_to :censo

  validates_presence_of :interest, :socialOrganization,
    :groupsParticipation, :workGroupDecision,
    :ideas, :activitiesParticipatedBogota,
    :whatIsParticipating, :rightsMechanisms,
    :districtParticipation, :training,
    :trainingTheme, :cabildoTrust,
    :trustLocalGovernment, :trustNationalGovernment

  def self.create_current_user(opinion_params, user)
    child = Opinion.new(opinion_params)
    child[:censo_id] = Censo.find_by(person_id: Person.find_by(user_id: user.id).id).id
    return child
  end
end

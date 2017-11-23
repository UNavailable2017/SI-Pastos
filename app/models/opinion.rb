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
#  reasonParticipation          :text
#  reasonNoParticipation        :text
#  adviceOnParticipation        :text
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

  validates :interest, :socialOrganization, :groupsParticipation,
    :workGroupDecision, :ideas, :activitiesParticipatedBogota,
    :whatIsParticipating, :rightsMechanisms, :districtParticipation,
    :reasonParticipation, :reasonNoParticipation, :adviceOnParticipation,
    :training, :trainingTheme, :cabildoTrust, :trustLocalGovernment,
    :trustNationalGovernment, :trustONGfoundation, presence: true

end

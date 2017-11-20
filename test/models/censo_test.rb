# == Schema Information
#
# Table name: censos
#
#  id                :integer          not null, primary key
#  date              :date             default(NULL)
#  numberOfChildren  :integer
#  originResguardo   :string
#  levelStudies      :string
#  profession        :string
#  entry             :string
#  health_service    :string
#  person_id         :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  health_service_id :integer
#

require 'test_helper'

class CensoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

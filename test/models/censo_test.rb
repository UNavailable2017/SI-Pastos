# == Schema Information
#
# Table name: censos
#
#  id               :integer          not null, primary key
#  date             :date
#  numberOfChildren :integer
#  originResguardo  :string
#  levelStudies     :string
#  profession       :string
#  entry            :string
#  person_id        :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class CensoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

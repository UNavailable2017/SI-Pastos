# == Schema Information
#
# Table name: elections
#
#  id           :integer          not null, primary key
#  idElection   :integer
#  date         :date
#  winner       :string
#  candidate_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class ElectionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

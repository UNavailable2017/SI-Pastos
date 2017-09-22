# == Schema Information
#
# Table name: candidates
#
#  id          :integer          not null, primary key
#  votes       :integer
#  person_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  election_id :integer
#

require 'test_helper'

class CandidateTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

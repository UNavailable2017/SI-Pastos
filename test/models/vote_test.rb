# == Schema Information
#
# Table name: votes
#
#  id           :integer          not null, primary key
#  email        :string
#  document_num :integer
#  option       :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class VoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

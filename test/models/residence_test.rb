# == Schema Information
#
# Table name: residences
#
#  id           :integer          not null, primary key
#  address      :text
#  phone        :integer
#  neighborhood :string
#  locality     :string
#  lat          :float
#  long         :float
#  person_id    :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class ResidenceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

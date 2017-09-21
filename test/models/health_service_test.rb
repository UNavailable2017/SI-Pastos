# == Schema Information
#
# Table name: health_services
#
#  id              :integer          not null, primary key
#  idHealthService :integer
#  name            :string
#  censo_id        :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class HealthServiceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

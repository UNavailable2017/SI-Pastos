# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  name       :string
#  date       :date
#  eventType  :string
#  eventInfo  :string
#  person_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

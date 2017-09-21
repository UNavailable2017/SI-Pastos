# == Schema Information
#
# Table name: children
#
#  id         :integer          not null, primary key
#  idChild    :integer
#  name       :string
#  age        :integer
#  censo_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ChildTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

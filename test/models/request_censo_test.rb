# == Schema Information
#
# Table name: request_censos
#
#  id           :integer          not null, primary key
#  name         :string
#  lastname     :string
#  num_document :integer
#  phone        :integer
#  address      :string
#  user_email   :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class RequestCensoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

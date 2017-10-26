# == Schema Information
#
# Table name: certificates
#
#  id             :integer          not null, primary key
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  documentPerson :integer
#  email          :string
#

require 'test_helper'

class CertificateTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

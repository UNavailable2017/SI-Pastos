# == Schema Information
#
# Table name: announcements
#
#  id                      :integer          not null, primary key
#  publicationDate         :date
#  deadline                :date
#  announcementType        :text
#  announcementInformation :text
#  person_id               :integer
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#

require 'test_helper'

class AnnouncementTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

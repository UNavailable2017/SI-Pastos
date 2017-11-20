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

class Announcement < ApplicationRecord
  belongs_to :person

  validates_presence_of :publicationDate, :deadline, :announcementType, :announcementInformation
end

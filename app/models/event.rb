# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  name       :string
#  date       :date
#  image      :string
#  eventType  :string
#  eventInfo  :string
#  person_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Event < ApplicationRecord
  belongs_to :person
  mount_uploader :image, ImageUploader
  validates :name, :date, :eventType, :eventInfo, presence: true
end

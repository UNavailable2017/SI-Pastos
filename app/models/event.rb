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

class Event < ApplicationRecord
  belongs_to :person
  mount_uploader :image, ImageUploader
  validates :name, :date, :eventType, :eventInfo, presence: true

  def self.paginate_all(page, field, option_order)
    if field
      Event.paginate(page: page).where('name LIKE ?', "%#{field}%").order(option_order)
    else
      Event.paginate(page: page).order(option_order)
    end
  end

end

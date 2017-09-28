# == Schema Information
#
# Table name: residences
#
#  id           :integer          not null, primary key
#  address      :string
#  phone        :integer
#  neighborhood :string
#  locality     :string
#  latitude     :float
#  longitude    :float
#  person_id    :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Residence < ApplicationRecord
    belongs_to :person
    geocoded_by :address
    after_validation :geocode
end

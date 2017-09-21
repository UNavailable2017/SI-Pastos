# == Schema Information
#
# Table name: residences
#
#  id           :integer          not null, primary key
#  address      :text
#  phone        :integer
#  neighborhood :string
#  locality     :string
#  lat          :float
#  long         :float
#  person_id    :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Residence < ApplicationRecord
    belongs_to :person
end

# == Schema Information
#
# Table name: children
#
#  id                :integer          not null, primary key
#  name              :string
#  birthdate         :date
#  completed_studies :string
#  censo_id          :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
class Child < ApplicationRecord
  belongs_to :censo

  validates_presence_of :name, :birthdate, :completed_studies
end

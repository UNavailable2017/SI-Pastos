# == Schema Information
#
# Table name: censos
#
#  id               :integer          not null, primary key
#  date             :date
#  numberOfChildren :integer
#  originResguardo  :string
#  levelStudies     :string
#  profession       :string
#  entry            :string
#  person_id        :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Censo < ApplicationRecord
    belongs_to :person
    has_one :opinion
    has_many :children
    belongs_to :health_service

end

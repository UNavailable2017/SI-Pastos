# == Schema Information
#
# Table name: people
#
#  id                 :integer          not null, primary key
#  documentPerson     :integer
#  documentType       :string
#  name               :string
#  lastname           :string
#  birthDate          :date
#  civilStatus        :string
#  gender             :string
#  isCensus           :boolean
#  originLanguage     :string
#  languageDomination :string
#  user_id            :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
class Person < ApplicationRecord
  has_one :residence
  belongs_to :user
  has_one :candidate
  has_many :events
  has_many :announcements
  has_one :censo

  def self.birth_date
    Person.pluck(:birthDate)
  end

end

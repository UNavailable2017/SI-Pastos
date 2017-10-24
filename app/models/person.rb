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

  def self.id_user
    Person.joins(:user).where(:user_id)
  end

  def self.check_user_request
      User.find_by user_id: ("#{User.current.uid}")
  end

  def self.check_id
      get_iden = User.find_by user_id: ("#{User.current.uid}")
      Person.joins(:user).where(user_id: get_iden.num_id)
  end

  # def self.check_data_two
  #     get_document = RequestCenso.last
  #     Person.joins(:censo).where(documentPerson: get_document.num_document)
  # end

end

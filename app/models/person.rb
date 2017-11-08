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

  def self.my_id
    get_user = User.select(:id).find_by id: ("#{User.current.id}")
    Person.joins(:user).select(:user_id, :id).where(user_id: get_user)
  end

  def self.check_user
    User.select(:id).where(id: ("#{User.current.id}"))
  end

  def self.paginate_all(page, field)
    if field
      Person.paginate(page: page).where('documentPerson LIKE ?', "%#{field}%")
    else
      Person.paginate(page: page)
    end
  end

end

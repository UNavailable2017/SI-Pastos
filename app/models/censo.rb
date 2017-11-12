# == Schema Information
#
# Table name: censos
#
#  id                :integer          not null, primary key
#  date              :date
#  numberOfChildren  :integer
#  originResguardo   :string
#  levelStudies      :string
#  profession        :string
#  entry             :string
#  person_id         :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  health_service_id :integer
#
class Censo < ApplicationRecord
  belongs_to :person
  has_one :opinion
  has_many :children
  belongs_to :health_service

  def self.get_censo
    us_id = Person.select(:id).find_by user_id: ("#{User.current.id}")
    doc_per = Person.find_by "\"documentPerson\"": ("#{field}")
    Censo.joins(:person).where("person_id=? and \"documentPerson\" =?", us_id , doc_per )
  end

  def self.check_data
      get_usid = User.find_by id: ("#{User.current.id}")
      #Person.select("\"documentPerson\"").joins(:censo).where(documentPerson: get_document.num_document)
      Person.joins(:censo).select(:id,:documentPerson,:user_id).where("\"isCensus\"=? and \"documentPerson\" =?", "t", "38425")

  end

end


#Censo.joins(:person).where("People.documentPerson": "51073")
#

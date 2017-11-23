# == Schema Information
#
# Table name: elections
#
#  id           :integer          not null, primary key
#  date         :date
#  winner       :string
#  candidate_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Election < ApplicationRecord
  has_many :candidates

  validates :date, presence: true

  def self.id_election
      id_elec = Election.last
      id_elec.id
  end

  def self.count_id_elec
       id_elec = Election.last
       a=Candidate.select( "election_id").where("\"election_id\" =?",  id_elec.id)
       a.size
  end

end

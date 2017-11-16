# == Schema Information
#
# Table name: votes
#
#  id           :integer          not null, primary key
#  email        :string
#  document_num :integer
#  option       :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Vote < ApplicationRecord
    def self.check_vote
        Vote.find_by email: ("#{User.current.email}")
    end

    def self.plus_one
        data = Vote.where(["email = ?", ("#{User.current.email}")]).last
        option = data.option
        election = Election.last
        aux = Person.select( "id", "firstname", "lastname", "votes").joins(:candidate).where("\"election_id\" =?", election.id)
        candidate= Candidate.where("person_id = ? and election_id=?", aux[option - 1], election.id).last
        vot = candidate.votes
        vot += 1
        candidate.votes = vot
        candidate.save
    end

    def self.clear
      Vote.delete_all
    end
end

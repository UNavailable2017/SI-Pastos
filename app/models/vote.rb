class Vote < ApplicationRecord
    def self.check_vote
        Vote.find_by email: ("#{User.current.email}")
    end

    def self.plus_one
        data = Vote.where(["email = ?", ("#{User.current.email}")]).last
        option = data.option
        election = Election.last
        aux = Person.select( "id", "firstname", "lastname", "votes").joins(:candidate).where("\"election_id\" =?", election.id)
        candidate= Candidate.find_by person_id: aux[option - 1]
        vot = candidate.votes
        vot += 1
        candidate.votes = vot
        candidate.save
    end
end

# == Schema Information
#
# Table name: candidates
#
#  id          :integer          not null, primary key
#  votes       :integer
#  person_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  election_id :integer
#

class Candidate < ApplicationRecord
    acts_as_votable
    belongs_to :person
    belongs_to :election

    def self.get_data
        last_election = Election.last
        Person.select( "\"documentPerson\"", "firstname", "lastname").joins(:candidate).where("\"isCensus\"=? and \"election_id\" =?", "t", last_election.id)
    end
end

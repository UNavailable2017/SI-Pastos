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
    belongs_to :person
    belongs_to :election

    validates_presence_of :votes

    def self.get_data
        last_election = Election.last
        if last_election == nil
            nil
        else
            Person.select( "\"documentPerson\"", "firstname", "lastname", "votes").joins(:candidate).where("\"election_id\" =?", last_election.id)
        end
    end
end

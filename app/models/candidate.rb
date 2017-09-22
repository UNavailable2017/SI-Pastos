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
end

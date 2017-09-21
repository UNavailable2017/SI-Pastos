# == Schema Information
#
# Table name: candidates
#
#  id          :integer          not null, primary key
#  idCandidate :integer
#  votes       :integer
#  person_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Candidate < ApplicationRecord
    belongs_to :person
    belongs_to :election
end

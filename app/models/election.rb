# == Schema Information
#
# Table name: elections
#
#  id           :integer          not null, primary key
#  idElection   :integer
#  date         :date
#  winner       :string
#  candidate_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Election < ApplicationRecord
    has_many :candidates
end

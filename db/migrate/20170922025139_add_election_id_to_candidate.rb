class AddElectionIdToCandidate < ActiveRecord::Migration[5.1]
  def change
    add_column :candidates, :election_id, :integer
  end
end

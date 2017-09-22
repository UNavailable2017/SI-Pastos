class RemoveIdElectionFromElections < ActiveRecord::Migration[5.1]
  def change
    remove_column :elections, :idElection, :integer
  end
end

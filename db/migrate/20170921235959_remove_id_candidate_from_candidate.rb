class RemoveIdCandidateFromCandidate < ActiveRecord::Migration[5.1]
  def change
    remove_column :candidates, :idCandidate, :integer
  end
end

class CreateCandidates < ActiveRecord::Migration[5.1]
  def change
    create_table :candidates do |t|
      t.integer :idCandidate
      t.integer :votes
      t.integer :person_id

      t.timestamps
    end
  end
end

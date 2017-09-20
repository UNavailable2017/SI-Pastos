class CreateElections < ActiveRecord::Migration[5.1]
  def change
    create_table :elections do |t|
      t.integer :idElection
      t.date :date
      t.string :winner
      t.integer :candidate_id

      t.timestamps
    end
  end
end

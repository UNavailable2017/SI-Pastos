class CreateCandidates < ActiveRecord::Migration[5.1]
  def change
    create_table :candidates do |t|
      t.integer :idCandidate
      t.integer :numberDocumentPerson
      t.integer :votes

      t.timestamps
    end
  end
end

class CreateCensos < ActiveRecord::Migration[5.1]
  def change
    create_table :censos do |t|
      t.integer :numberDocumentPerson
      t.integer :idOpinion
      t.integer :idHealthService
      t.string :date
      t.integer :numberOfChildren
      t.string :gender
      t.integer :ageChildren
      t.string :originResguardo
      t.string :levelStudies
      t.string :profession
      t.string :entry

      t.timestamps
    end
  end
end

class CreateCensos < ActiveRecord::Migration[5.1]
  def change
    create_table :censos do |t|
      t.date :date
      t.integer :numberOfChildren
      t.string :originResguardo
      t.string :levelStudies
      t.string :profession
      t.string :entry
      t.integer :person_id

      t.timestamps
    end
  end
end

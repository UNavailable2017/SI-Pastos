class CreateCensos < ActiveRecord::Migration[5.1]
  def change
    create_table :censos do |t|
      t.date :date, default: -> { 'CURRENT_TIMESTAMP' }
      t.integer :numberOfChildren
      t.string :originResguardo
      t.string :levelStudies
      t.string :profession
      t.string :entry
      t.string :health_service
      t.integer :person_id

      t.timestamps
    end
  end
end

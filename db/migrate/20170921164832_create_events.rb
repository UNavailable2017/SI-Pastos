class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.string "eventType"
      t.string "eventInfo"
      t.integer :person_id

      t.timestamps
    end
  end
end

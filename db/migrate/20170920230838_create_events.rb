class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.string :eventType
      t.string :eventInfo
      t.string :person_id=integer

      t.timestamps
    end
  end
end

class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.integer :idGovernor
      t.string :name
      t.date :date
      t.string :eventType
      t.string :eventInfo

      t.timestamps
    end
  end
end

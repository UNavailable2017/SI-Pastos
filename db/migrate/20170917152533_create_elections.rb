class CreateElections < ActiveRecord::Migration[5.1]
  def change
    create_table :elections do |t|
      t.date :date
      t.string :winner

      t.timestamps
    end
  end
end

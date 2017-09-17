class CreateMeetings < ActiveRecord::Migration[5.1]
  def change
    create_table :meetings do |t|
      t.string :summoner
      t.string :frecuency
      t.text :theme

      t.timestamps
    end
  end
end

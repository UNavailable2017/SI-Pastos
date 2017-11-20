class CreateChildren < ActiveRecord::Migration[5.1]
  def change
    create_table :children do |t|
      t.integer :idChild
      t.string :name
      t.date :birthdate
      t.string :completed_studies
      t.integer :censo_id

      t.timestamps
    end
  end
end

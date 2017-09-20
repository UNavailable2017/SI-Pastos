class CreateChildren < ActiveRecord::Migration[5.1]
  def change
    create_table :children do |t|
      t.integer :idChild
      t.string :name
      t.integer :age
      t.integer :censo_id

      t.timestamps
    end
  end
end

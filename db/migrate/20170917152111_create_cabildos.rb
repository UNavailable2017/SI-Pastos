class CreateCabildos < ActiveRecord::Migration[5.1]
  def change
    create_table :cabildos do |t|
      t.string :name
      t.text :address
      t.integer :phone
      t.string :workGroup

      t.timestamps
    end
  end
end

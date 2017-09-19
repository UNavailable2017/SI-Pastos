class CreateResidences < ActiveRecord::Migration[5.1]
  def change
    create_table :residences do |t|
      t.integer :idResidence
      t.text :address
      t.integer :phone
      t.string :neighborhood
      t.string :locality

      t.timestamps
    end
  end
end

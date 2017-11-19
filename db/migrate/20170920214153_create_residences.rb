class CreateResidences < ActiveRecord::Migration[5.1]
  def change
    create_table :residences do |t|
      t.string :address
      t.integer :phone
      t.string :neighborhood
      t.string :locality
      t.float :lat
      t.float :long
      t.integer :person_id

      t.timestamps
    end
  end
end

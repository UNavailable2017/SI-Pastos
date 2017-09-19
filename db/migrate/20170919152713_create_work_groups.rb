class CreateWorkGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :work_groups do |t|
      t.integer :idGroup
      t.text :participant
      t.text :proyect
      t.text :cabildo

      t.timestamps
    end
  end
end

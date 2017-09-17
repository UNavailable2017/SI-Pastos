class CreateWorkGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :work_groups do |t|
      t.text :participant
      t.text :proyect

      t.timestamps
    end
  end
end

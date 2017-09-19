class CreateWorkGroupPeople < ActiveRecord::Migration[5.1]
  def change
    create_table :work_group_people do |t|
      t.integer :idWorkGroup
      t.integer :documentNumberPerson

      t.timestamps
    end
  end
end

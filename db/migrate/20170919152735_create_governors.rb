class CreateGovernors < ActiveRecord::Migration[5.1]
  def change
    create_table :governors do |t|
      t.string :idGovernor
      t.string :name
      t.date :govermentperiod
      t.string :nameCabildo
      t.string :cabildoAddress
      t.string :cabildoPhone
      t.integer :documentGovernor

      t.timestamps
    end
  end
end

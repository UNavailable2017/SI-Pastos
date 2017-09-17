class CreateGovernors < ActiveRecord::Migration[5.1]
  def change
    create_table :governors do |t|
      t.string :name
      t.date :startgovermentperiod
      t.date :endgovermentperiod

      t.timestamps
    end
  end
end

class CreateHealthServices < ActiveRecord::Migration[5.1]
  def change
    create_table :health_services do |t|
      t.integer :idHealthService
      t.string :name
      t.integer :censo_id

      t.timestamps
    end
  end
end

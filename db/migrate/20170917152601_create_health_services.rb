class CreateHealthServices < ActiveRecord::Migration[5.1]
  def change
    create_table :health_services do |t|
      t.string :name
      t.date :admissionDate
      t.date :departureDate
      t.string :regime

      t.timestamps
    end
  end
end

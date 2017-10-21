class CreateRequestCensos < ActiveRecord::Migration[5.1]
  def change
    create_table :request_censos do |t|
      t.string :name
      t.string :type_document
      t.integer :num_document
      t.integer :phone
      t.string :address

      t.timestamps
    end
  end
end

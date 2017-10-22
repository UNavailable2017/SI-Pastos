class CreateRequestCensos < ActiveRecord::Migration[5.1]
  def change
    create_table :request_censos do |t|
      t.string :name
      t.string :lastname
      t.integer :num_document
      t.integer :phone
      t.string :address
      t.string :user_email
      t.timestamps
    end
  end
end

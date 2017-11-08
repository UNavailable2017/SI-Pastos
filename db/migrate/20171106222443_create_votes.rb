class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.string :email
      t.integer :document_num
      t.integer :option

      t.timestamps
    end
  end
end

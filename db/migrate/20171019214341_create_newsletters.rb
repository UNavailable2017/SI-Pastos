class CreateNewsletters < ActiveRecord::Migration[5.1]
  def change
    create_table :newsletters do |t|
      t.string :subject
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end

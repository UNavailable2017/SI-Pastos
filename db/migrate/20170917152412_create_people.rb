class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.integer :document
      t.string :name
      t.string :lastname
      t.string :age
      t.string :birthDate
      t.string :civilStatus
      t.string :gender
      t.string :originLanguage
      t.string :domainLanguage

      t.timestamps
    end
  end
end

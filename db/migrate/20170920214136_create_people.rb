class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.integer :documentPerson
      t.string :documentType
      t.string :name
      t.string :lastname
      t.date :birthDate
      t.string :civilStatus
      t.string :gender
      t.boolean :isCensus
      t.string :originLanguage
      t.string :languageDomination
      t.integer :user_id

      t.timestamps
    end
  end
end

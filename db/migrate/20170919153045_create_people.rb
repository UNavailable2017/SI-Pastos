class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.integer :documentPerson
      t.integer :mailPerson
      t.integer :residence
      t.integer :idGovernCenso
      t.integer :documentType
      t.string :name
      t.string :lastname
      t.string :age
      t.string :birthDate
      t.string :civilStatus
      t.string :gender
      t.string :originLanguage
      t.string :domainLanguage
      t.string :languageDomination

      t.timestamps
    end
  end
end

class AddDocumentPersonToCertificates < ActiveRecord::Migration[5.1]
  def change
    add_column :certificates, :documentPerson, :integer
  end
end

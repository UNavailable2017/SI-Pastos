class AddEmailToCertificates < ActiveRecord::Migration[5.1]
  def change
    add_column :certificates, :email, :string
  end
end

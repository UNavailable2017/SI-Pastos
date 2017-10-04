class AddOmniauthToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :provider, :string
    add_column :users, :uid, :stringname
    add_column :users, :image, :text
  end
end
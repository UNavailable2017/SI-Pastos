class CambiarTipoAddress < ActiveRecord::Migration[5.1]
  def up
    change_table :residences do |t|
      t.change :address, :string
    end
  end

  def down
    change_table :residences do |t|
      t.change :address, :text
    end
  end
end

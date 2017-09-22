class ChangeTypeCategory < ActiveRecord::Migration[5.1]
  def up
    change_table :events do |t|
      t.change :eventInfo, :text
    end
  end

  def down
    change_table :events do |t|
      t.change :eventInfo, :string
    end
  end
end

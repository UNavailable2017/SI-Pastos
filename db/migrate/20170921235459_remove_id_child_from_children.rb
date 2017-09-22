class RemoveIdChildFromChildren < ActiveRecord::Migration[5.1]
  def change
    remove_column :children, :idChild, :integer
  end
end

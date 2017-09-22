class RemoveIdOpinionFromOpinion < ActiveRecord::Migration[5.1]
  def change
    remove_column :opinions, :idOpinion, :integer
  end
end

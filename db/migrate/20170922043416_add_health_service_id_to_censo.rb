class AddHealthServiceIdToCenso < ActiveRecord::Migration[5.1]
  def change
    add_column :censos, :health_service_id, :integer
  end
end

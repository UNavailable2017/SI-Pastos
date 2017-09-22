class RemoveIdHealthServiceFromHealthServices < ActiveRecord::Migration[5.1]
  def change
    remove_column :health_services, :idHealthService, :integer
  end
end

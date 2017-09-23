class CambiandoColumnaResidencia < ActiveRecord::Migration[5.1]
  def change
    rename_column :residences, :long, :longitude
    rename_column :residences, :lat, :latitude
 end
end

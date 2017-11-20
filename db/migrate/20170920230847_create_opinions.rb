class CreateOpinions < ActiveRecord::Migration[5.1]
  def change
    create_table :opinions do |t|
      t.text :interest
      t.text :socialOrganization
      t.text :groupsParticipation
      t.text :workGroupDecision
      t.text :ideas
      t.text :activitiesParticipatedBogota
      t.text :whatIsParticipating
      t.text :rightsMechanisms
      t.text :districtParticipation
      t.text :reasonParticipation
      t.text :reasonNoParticipation
      t.text :adviceOnParticipation
      t.text :training
      t.text :trainingTheme
      t.text :cabildoTrust
      t.text :trustLocalGovernment
      t.text :trustNationalGovernment
      t.text :trustONGfoundation
      t.integer :censo_id

      t.timestamps
    end
  end
end

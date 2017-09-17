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

      t.timestamps
    end
  end
end

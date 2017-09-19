class CreateAnnouncements < ActiveRecord::Migration[5.1]
  def change
    create_table :announcements do |t|
      t.integer :idAnnouncement
      t.string :idGovernor
      t.date :publicationDate
      t.date :deadline
      t.text :announcementType
      t.text :announcementInformation

      t.timestamps
    end
  end
end

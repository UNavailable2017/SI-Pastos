class CreateAnnouncements < ActiveRecord::Migration[5.1]
  def change
    create_table :announcements do |t|
      t.date :publicationDate
      t.date :deadline

      t.timestamps
    end
  end
end

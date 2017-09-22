class RemoveIdAnnouncementFromAnnouncement < ActiveRecord::Migration[5.1]
  def change
    remove_column :announcements, :idAnnouncement, :integer
  end
end

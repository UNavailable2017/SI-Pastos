json.extract! announcement, :id, :idAnnouncement, :publicationDate, :deadline, :announcementType, :announcementInformation, :created_at, :updated_at
json.url announcement_url(announcement, format: :json)

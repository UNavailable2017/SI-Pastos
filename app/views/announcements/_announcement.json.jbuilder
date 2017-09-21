json.extract! announcement, :id, :idAnnouncement, :publicationDate, :deadline, :announcementType, :announcementInformation, :person_id, :created_at, :updated_at
json.url announcement_url(announcement, format: :json)

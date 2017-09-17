json.extract! announcement, :id, :publicationDate, :deadline, :created_at, :updated_at
json.url announcement_url(announcement, format: :json)

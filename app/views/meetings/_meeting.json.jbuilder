json.extract! meeting, :id, :summoner, :frecuency, :theme, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)

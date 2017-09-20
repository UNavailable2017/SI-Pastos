json.extract! event, :id, :name, :date, :eventType, :eventInfo, :person_id=integer, :created_at, :updated_at
json.url event_url(event, format: :json)

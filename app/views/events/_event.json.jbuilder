json.extract! event, :id, :idGovernor, :name, :date, :eventType, :eventInfo, :created_at, :updated_at
json.url event_url(event, format: :json)

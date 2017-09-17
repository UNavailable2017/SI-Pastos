json.extract! election, :id, :date, :winner, :created_at, :updated_at
json.url election_url(election, format: :json)

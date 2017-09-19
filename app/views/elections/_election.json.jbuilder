json.extract! election, :id, :idElection, :date, :winner, :created_at, :updated_at
json.url election_url(election, format: :json)

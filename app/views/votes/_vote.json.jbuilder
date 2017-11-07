json.extract! vote, :id, :email, :document_num, :option, :created_at, :updated_at
json.url vote_url(vote, format: :json)

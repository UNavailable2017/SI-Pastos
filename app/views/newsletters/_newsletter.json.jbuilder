json.extract! newsletter, :id, :subject, :content, :user_id, :created_at, :updated_at
json.url newsletter_url(newsletter, format: :json)

json.extract! person, :id, :document, :name, :lastname, :age, :birthDate, :civilStatus, :gender, :originLanguage, :domainLanguage, :created_at, :updated_at
json.url person_url(person, format: :json)

json.extract! person, :id, :documentPerson, :documentType, :firstname, :lastname, :birthDate, :civilStatus, :gender, :isCensus, :originLanguage, :languageDomination, :user_id, :created_at, :updated_at
json.url person_url(person, format: :json)

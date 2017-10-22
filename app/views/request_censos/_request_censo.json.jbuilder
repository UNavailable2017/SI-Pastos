json.extract! request_censo, :id, :name, :type_document, :num_document, :phone, :address, :created_at, :updated_at
json.url request_censo_url(request_censo, format: :json)

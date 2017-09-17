json.extract! health_service, :id, :name, :admissionDate, :departureDate, :regime, :created_at, :updated_at
json.url health_service_url(health_service, format: :json)

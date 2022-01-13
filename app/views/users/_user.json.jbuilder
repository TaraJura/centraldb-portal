json.extract! user, :id, :name, :email, :phone, :document_type, :document_number, :created_at, :updated_at
json.url user_url(user, format: :json)

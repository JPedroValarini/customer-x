json.extract! client, :id, :full_name, :email, :telephone, :date_register, :created_at, :updated_at
json.url client_url(client, format: :json)

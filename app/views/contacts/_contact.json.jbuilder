json.extract! contact, :id, :full_name, :email, :telephone, :client_id, :created_at, :updated_at
json.url contact_url(contact, format: :json)

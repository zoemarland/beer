json.extract! customer, :id, :last_name, :first_name, :email_address, :created_at, :updated_at
json.url customer_url(customer, format: :json)

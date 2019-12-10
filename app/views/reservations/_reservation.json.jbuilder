json.extract! reservation, :id, :customer_id, :all_beer_id, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)

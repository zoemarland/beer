json.extract! booking, :id, :all_beer_id, :customer_id, :amount_of_people, :date, :time, :created_at, :updated_at
json.url booking_url(booking, format: :json)

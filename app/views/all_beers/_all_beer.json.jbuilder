json.extract! all_beer, :id, :name, :city, :address, :categories, :latitude, :longitude, :postalCode, :province, :twitter, :websites, :created_at, :updated_at
json.url all_beer_url(all_beer, format: :json)

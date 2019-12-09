json.extract! brewed_beer, :id, :name, :brand, :style, :all_beer_id, :created_at, :updated_at
json.url brewed_beer_url(brewed_beer, format: :json)

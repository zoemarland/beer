json.extract! brewed_beer, :id, :name, :brand, :style, :created_at, :updated_at
json.url brewed_beer_url(brewed_beer, format: :json)

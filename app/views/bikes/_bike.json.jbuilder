json.extract! bike, :id, :name, :image, :description, :price, :created_at, :updated_at
json.url bike_url(bike, format: :json)

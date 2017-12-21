json.extract! reservation, :id, :customer, :info, :restaurant_id, :table_id, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)

json.extract! user, :id, :email, :name, :points, :created_at, :updated_at
json.url user_url(user, format: :json)

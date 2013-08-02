json.array!(@roles) do |role|
  json.extract! role, :actor_id, :character_name, :movie_id
  json.url role_url(role, format: :json)
end

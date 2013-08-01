json.array!(@directors) do |director|
  json.extract! director, :name, :dob
  json.url director_url(director, format: :json)
end

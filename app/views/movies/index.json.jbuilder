json.array!(@movies) do |movie|
  json.extract! movie, :title, :year, :director
  json.url movie_url(movie, format: :json)
end

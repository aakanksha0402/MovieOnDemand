json.array!(@movies) do |movie|
  json.extract! movie, :id, :name, :director, :starring, :released_on, :rating, :description, :duration, :screening_count, :is_delete
  json.url movie_url(movie, format: :json)
end

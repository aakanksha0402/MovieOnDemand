json.array!(@movie_suggestions) do |movie_suggestion|
  json.extract! movie_suggestion, :id, :user_id, :name, :details, :status, :is_deleted
  json.url movie_suggestion_url(movie_suggestion, format: :json)
end

json.array!(@communities) do |community|
  json.extract! community, :id, :user_id, :movie_id, :description
  json.url community_url(community, format: :json)
end

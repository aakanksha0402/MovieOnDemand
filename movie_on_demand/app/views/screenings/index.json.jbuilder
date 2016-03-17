json.array!(@screenings) do |screening|
  json.extract! screening, :id, :movie_id, :user_id, :theatre_id, :offer_id, :start_time, :date, :approval_filmmaker, :approval_theatre, :threshold, :status, :is_deleted
  json.url screening_url(screening, format: :json)
end

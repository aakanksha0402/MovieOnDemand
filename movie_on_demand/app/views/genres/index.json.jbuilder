json.array!(@genres) do |genre|
  json.extract! genre, :id, :name, :parent_id, :is_deleted
  json.url genre_url(genre, format: :json)
end

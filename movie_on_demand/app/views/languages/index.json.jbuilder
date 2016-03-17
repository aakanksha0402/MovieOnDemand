json.array!(@languages) do |language|
  json.extract! language, :id, :language, :is_deleted
  json.url language_url(language, format: :json)
end

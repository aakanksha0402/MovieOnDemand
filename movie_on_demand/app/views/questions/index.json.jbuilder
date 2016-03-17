json.array!(@questions) do |question|
  json.extract! question, :id, :question_name, :is_deleted
  json.url question_url(question, format: :json)
end

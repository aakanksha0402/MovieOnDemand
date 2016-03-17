json.array!(@answers) do |answer|
  json.extract! answer, :id, :question_id, :answer_name, :is_deleted
  json.url answer_url(answer, format: :json)
end

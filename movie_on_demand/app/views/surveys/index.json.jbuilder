json.array!(@surveys) do |survey|
  json.extract! survey, :id, :title, :description, :is_deleted
  json.url survey_url(survey, format: :json)
end

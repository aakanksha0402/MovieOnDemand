json.array!(@promotions) do |promotion|
  json.extract! promotion, :id, :movie_id, :whatsapp, :facebook, :twitter, :link, :is_deleted
  json.url promotion_url(promotion, format: :json)
end

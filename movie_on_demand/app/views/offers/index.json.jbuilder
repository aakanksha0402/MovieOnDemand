json.array!(@offers) do |offer|
  json.extract! offer, :id, :theater_id, :anme, :description, :discount, :promo_code, :starting_date, :ending_date, :is_deleted
  json.url offer_url(offer, format: :json)
end

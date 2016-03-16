json.array!(@seat_prices) do |seat_price|
  json.extract! seat_price, :id, :theater_id, :weekdays, :weekdays, :weekends, :weekends, :is_deleted
  json.url seat_price_url(seat_price, format: :json)
end

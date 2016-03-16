json.array!(@theater_seats) do |theater_seat|
  json.extract! theater_seat, :id, :theater_screen_id, :seat_type, :row_count, :column_count, :price_multiple_factor, :price_multiple_factor, :tax_payable, :tax_payable
  json.url theater_seat_url(theater_seat, format: :json)
end

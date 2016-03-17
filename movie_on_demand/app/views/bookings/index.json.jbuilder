json.array!(@bookings) do |booking|
  json.extract! booking, :id, :screening_id, :user_id, :seat_count, :is_deleted
  json.url booking_url(booking, format: :json)
end

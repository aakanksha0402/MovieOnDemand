json.array!(@booked_seats) do |booked_seat|
  json.extract! booked_seat, :id, :theatre_seat, :booking_id, :status_of_booked_seat, :is_deleted
  json.url booked_seat_url(booked_seat, format: :json)
end

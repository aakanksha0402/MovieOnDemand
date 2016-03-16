json.array!(@theater_screens) do |theater_screen|
  json.extract! theater_screen, :id, :theater_id, :screen_no, :is_deleted
  json.url theater_screen_url(theater_screen, format: :json)
end

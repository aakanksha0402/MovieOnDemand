json.array!(@theater_staffs) do |theater_staff|
  json.extract! theater_staff, :id, :user_id, :theater_id, :staff_permission_id, :is_deleted
  json.url theater_staff_url(theater_staff, format: :json)
end

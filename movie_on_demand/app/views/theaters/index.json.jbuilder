json.array!(@theaters) do |theater|
  json.extract! theater, :id, :users_id, :name, :phone, :address, :city, :state, :country, :pincode, :unique_key, :total_screens, :enable, :is_deleted
  json.url theater_url(theater, format: :json)
end

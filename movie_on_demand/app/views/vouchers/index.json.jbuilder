json.array!(@vouchers) do |voucher|
  json.extract! voucher, :id, :theater_id, :theater_screen_id, :name, :description, :price, :is_deleted
  json.url voucher_url(voucher, format: :json)
end

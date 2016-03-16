json.array!(@staff_permissions) do |staff_permission|
  json.extract! staff_permission, :id, :manage_seat, :manage_vouchers, :manage_show_time, :manage_tax_info, :manage_price_per_day, :is_deleted
  json.url staff_permission_url(staff_permission, format: :json)
end

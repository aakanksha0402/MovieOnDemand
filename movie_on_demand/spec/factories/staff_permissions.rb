FactoryGirl.define do
  factory :staff_permission do
    manage_seat false
    manage_vouchers false
    manage_show_time false
    manage_tax_info false
    manage_price_per_day false
    is_deleted false
  end
end

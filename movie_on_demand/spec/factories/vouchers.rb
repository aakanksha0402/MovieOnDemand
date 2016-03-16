FactoryGirl.define do
  factory :voucher do
    theater nil
    theater_screen nil
    name "MyString"
    description "MyString"
    price "9.99"
    is_deleted false
  end
end

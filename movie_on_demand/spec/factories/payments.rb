FactoryGirl.define do
  factory :payment do
    bookedseat ""
    amount "9.99"
    mode_of_payment "MyString"
    status_of_payment false
    is_deleted false
  end
end

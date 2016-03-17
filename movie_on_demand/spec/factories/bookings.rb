FactoryGirl.define do
  factory :booking do
    screening nil
    user nil
    seat_count 1
    is_deleted false
  end
end

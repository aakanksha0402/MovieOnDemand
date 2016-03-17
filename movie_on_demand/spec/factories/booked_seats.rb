FactoryGirl.define do
  factory :booked_seat do
    theatre_seat ""
    booking nil
    status_of_booked_seat "MyString"
    is_deleted false
  end
end

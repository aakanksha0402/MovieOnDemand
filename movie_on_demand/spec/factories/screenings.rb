FactoryGirl.define do
  factory :screening do
    movie nil
    user nil
    theatre nil
    offer nil
    start_time "2016-03-17 10:35:13"
    date "2016-03-17"
    approval_filmmaker false
    approval_theatre false
    threshold 1
    status false
    is_deleted false
  end
end

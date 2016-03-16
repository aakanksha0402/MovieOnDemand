FactoryGirl.define do
  factory :offer do
    theater nil
    anme "MyString"
    description "MyString"
    discount "9.99"
    promo_code "MyString"
    starting_date "2016-03-16"
    ending_date "2016-03-16"
    is_deleted false
  end
end

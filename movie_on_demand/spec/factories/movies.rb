FactoryGirl.define do
  factory :movie do
    name "MyString"
    director "MyString"
    starring "MyString"
    released_on "2016-03-17"
    rating "9.99"
    description "MyText"
    duration "MyString"
    screening_count 1
    is_delete false
  end
end

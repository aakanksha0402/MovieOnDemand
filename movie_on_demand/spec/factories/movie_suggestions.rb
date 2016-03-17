FactoryGirl.define do
  factory :movie_suggestion do
    user nil
    name "MyString"
    details "MyString"
    status false
    is_deleted false
  end
end

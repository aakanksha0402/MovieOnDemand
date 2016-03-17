FactoryGirl.define do
  factory :promotion do
    movie nil
    whatsapp "MyText"
    facebook "MyText"
    twitter "MyText"
    link "MyString"
    is_deleted false
  end
end

FactoryGirl.define do
  factory :comment do
    email "MyString"
    body "MyText"
    article nil
  end
end

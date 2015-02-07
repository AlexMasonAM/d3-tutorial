FactoryGirl.define do
  factory :user do
    user_name Faker::Internet.safe_email #=> "christelle@example.org 
  end
end

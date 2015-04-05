FactoryGirl.define do
  factory :user do
    name Faker::Name.name
    username Faker::Internet.user_name
    email Faker::Internet.email
    password_digest Faker::Internet.password
    token Faker::Internet.password
    bio Faker::Lorem.sentence
    avatar Faker::Avatar.image
    website Faker::Internet.domain_name
    location Faker::Address.city
    privacy Faker::Number.digit
  end
end

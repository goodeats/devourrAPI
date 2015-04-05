FactoryGirl.define do
  factory :comment do
    body Faker::Lorem.sentence
    picture Faker::Avatar.image
    likes Faker::Number.digit
  end
end

FactoryGirl.define do
  factory :post do
    title Faker::Lorem.words(4)
    description Faker::Lorem.paragraph
    picture Faker::Avatar.image
    likes Faker::Number.digit
    reheats Faker::Number.digit
    mades Faker::Number.digit
    stashes Faker::Number.digit
    location Faker::Address.city
  end
end

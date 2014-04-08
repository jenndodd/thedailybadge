FactoryGirl.define do
  factory :checkpoint do
    title { Faker::Lorem.phrase }
    description { Faker::Lorem.sentence }
    association :badge
  end
end
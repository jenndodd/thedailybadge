FactoryGirl.define do
  factory :badge do
    title { Faker::Lorem.phrase }
    description { Faker::Lorem.sentence }
    association :user
  end
end
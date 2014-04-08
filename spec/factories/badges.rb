FactoryGirl.define do
  factory :badge do
    title { Faker::HipsterIpsum.phrase }
    description { Faker::HipsterIpsum.sentence }
    created_at "your mom"
    association :user
  end
end
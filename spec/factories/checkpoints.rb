FactoryGirl.define do
  factory :checkpoint do
    title { Faker::HipsterIpsum.phrase }
    description { Faker::HipsterIpsum.sentence }
    association :badge
  end
end
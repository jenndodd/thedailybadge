FactoryGirl.define do
  factory :checkpoint do
    title { Faker::HipsterIpsum.phrase(word_count = 3) }
    description { Faker::HipsterIpsum.sentence }
    association :badge
  end
end
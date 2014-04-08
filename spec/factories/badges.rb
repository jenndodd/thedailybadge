FactoryGirl.define do
  factory :badge do
    title { Faker::HipsterIpsum.phrase(word_count = 3) }
    description { Faker::HipsterIpsum.sentence }
    association :user
  end
end
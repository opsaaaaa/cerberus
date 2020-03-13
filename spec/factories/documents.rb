FactoryBot.define do
  factory :document do
    name { Faker::Lorem.words }
    content { { title:Faker::Lorem.words, body:Faker::Lorem.paragraph } }
  end
end

FactoryBot.define do
  factory :document do
    name { Faker::Lorem.word }
    content { { title:Faker::Lorem.word, body:Faker::Lorem.paragraph } }
  end
end

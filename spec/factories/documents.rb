FactoryBot.define do
  factory :document do
    name { Faker::Lorem.word }
    content { [ 
      {key:'title', value:Faker::Lorem.word}, 
      {key:'body', value:Faker::Lorem.paragraph }
    ] }
    template_id { FactoryBot::create(:template).id }
  end
end

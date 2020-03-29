FactoryBot.define do
  factory :template do

    name { Faker::Lorem.word }
    content {{ template: "From the template" }}

    show_id { FactoryBot::create(:vue_show).id }
    form_id { FactoryBot::create(:vue_form).id }
  end
end

FactoryBot.define do
  factory :vue_show, class: 'VueFile' do
    name { Faker::Lorem.word }
    body { '
      <div>
          <h1 id="title">
            {{ title }}
          </h1>

          <p id="body">
            {{ body }}
          </p>

          <p id="template">
            {{ template }}
          </p>
      </div>
    ' }
  end
end

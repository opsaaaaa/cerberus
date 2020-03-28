FactoryBot.define do
  factory :template do
    body {'
      <div>
          <h1 id="title">
            {{ title }}
          </h1>

          <p id="body">
            {{ body }}
          </p>
      </div>
    '}
    name { Faker::Lorem.word }
    keys {{ title:'#title', body:'#body' }}
  end
end

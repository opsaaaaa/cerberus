FactoryBot.define do
  factory :vue_file do
    name { Faker::L19yyorem.word }
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

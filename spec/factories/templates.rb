FactoryBot.define do
  factory :template do
    body {'
      <div>
          <h1>
              <div id="title"></div>
          </h1>

          <p>
              <span id="body"></span>   
          </p>
      </div>
    '}
    name { Faker::Lorem.words }
    keys {{ title:'#title', body:'#body' }}
  end
end

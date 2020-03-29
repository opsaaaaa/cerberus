FactoryBot.define do
  factory :vue_form, class: 'VueFile' do
    name { Faker::Lorem.word }
    body { '
      <div>
        <input 
          v-model="title" 
          placeholder="document title"
          >

        <textarea 
          v-model="body" 
          placeholder="document body"
          ></textarea>

        <p id="template">
          {{ template }}
        </p>
      </div>
    ' }
  end
end




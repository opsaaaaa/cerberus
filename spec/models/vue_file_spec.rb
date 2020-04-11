require 'rails_helper'

RSpec.describe VueFile, type: :model do
  let( :vue_show ) { FactoryBot::create(:vue_show) }
  let( :vue_form ) { FactoryBot::create(:vue_form) }
  let( :template1 ) do 
    FactoryBot::create(:template, show_id: vue_show.id, form_id: vue_form.id)
  end
  let( :template2 ) do 
    FactoryBot::create(:template, show_id: vue_show.id, form_id: vue_form.id)
  end
  
  it "has templates" do
    expect(vue_show.templates).to include(template1)
    expect(vue_form.templates).to include(template1)
    expect(vue_show.templates).to include(template2)
    expect(vue_form.templates).to include(template2)
  end

end

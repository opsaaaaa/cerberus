require 'rails_helper'

RSpec.describe Template, type: :model do
 
  let( :vue_show ) { FactoryBot::create(:vue_show) }
  let( :vue_form ) { FactoryBot::create(:vue_form) }
  
  let( :template ) do 
    FactoryBot::create(:template, show_id: vue_show.id, form_id: vue_form.id)
  end
  
  let( :document1 ) { FactoryBot::create(:document, template_id: template.id) }
  let( :document2 ) { FactoryBot::create(:document, template_id: template.id) }
  
  it "has documents" do
    expect(template.documents).to include(document1)
    expect(template.documents).to include(document2)
  end

  it "belongs to a show vue file" do
    expect(template.show.id).to eq(vue_show.id)
  end
  
  it "belongs to a form vue file" do
    expect(template.form.id).to eq(vue_form.id)
  end


end

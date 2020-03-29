require 'rails_helper'

RSpec.describe Document, type: :model do
  let( :template ) { FactoryBot::create(:template) }
  let( :document ) { FactoryBot::create(:document, template_id: template.id) }

  it "has template" do
    expect(document.template.id).to eq(template.id)
  end

end

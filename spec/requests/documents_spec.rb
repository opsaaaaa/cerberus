require 'rails_helper'

RSpec.describe "Documents", type: :request do
  
  let(:user) {FactoryBot::create(:user)}
  let(:content) {[
    {"key" => "title","value" => "vitae"},
    {"key" => "body","value" => "Ad accusantium et. Enim sint molestias. Nihil qui sequi."},
    {"key"=>"age","value" => "34"}]}
  
    before(:each) { sign_in user }
  
  describe "GET /documents" do
    it "works! (now write some real specs)" do
      get documents_path
      expect(response).to have_http_status(200)
    end
  end
  
  
  describe "CREATE /documents" do
    let(:template) {FactoryBot::create(:template)}

    it "works" do
      post documents_path, :params => {
        document: {
          name: "this_test_document",
          content: content.to_json,
          template_id: template.id
        }
      }
      expect(response).to have_http_status(302)
      document = Document.find_by(name: 'this_test_document')
      expect(document.name).to eq("this_test_document")
      expect(document.content).to eq(content)
      expect(document.template_id).to eq(template.id)
    end
  end

  describe "UPDATE /documents/:id" do
    let(:template) {FactoryBot::create(:template)}
    let(:document) {FactoryBot::create(:document)}

    it "works" do
      put document_path(document.id), :params => {
        document: {
          name: "this_test_document",
          content: content.to_json,
          template_id: template.id
        }
      }
      expect(response).to have_http_status(302)
      updated_document = Document.find(document.id)
      expect(updated_document.name).to eq("this_test_document")
      expect(updated_document.content).to eq(content)
      expect(updated_document.template_id).to eq(template.id)
    end
  end
end

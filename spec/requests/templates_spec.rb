require 'rails_helper'

RSpec.describe "Templates", type: :request do
  
  let(:user) {FactoryBot::create(:user)}
  before(:each) { sign_in user }
  
  describe "GET /templates" do
    it "works! (now write some real specs)" do
      get templates_path
      expect(response).to have_http_status(200)
    end
  end
end

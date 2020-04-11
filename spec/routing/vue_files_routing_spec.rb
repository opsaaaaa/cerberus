require "rails_helper"

RSpec.describe VueFilesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/vue_files").to route_to("vue_files#index")
    end

    it "routes to #new" do
      expect(:get => "/vue_files/new").to route_to("vue_files#new")
    end

    it "routes to #show" do
      expect(:get => "/vue_files/1").to route_to("vue_files#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/vue_files/1/edit").to route_to("vue_files#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/vue_files").to route_to("vue_files#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/vue_files/1").to route_to("vue_files#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/vue_files/1").to route_to("vue_files#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/vue_files/1").to route_to("vue_files#destroy", :id => "1")
    end
  end
end

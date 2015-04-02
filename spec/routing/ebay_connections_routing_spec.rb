require "rails_helper"

RSpec.describe EbayConnectionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ebay_connections").to route_to("ebay_connections#index")
    end

    it "routes to #new" do
      expect(:get => "/ebay_connections/new").to route_to("ebay_connections#new")
    end

    it "routes to #show" do
      expect(:get => "/ebay_connections/1").to route_to("ebay_connections#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ebay_connections/1/edit").to route_to("ebay_connections#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ebay_connections").to route_to("ebay_connections#create")
    end

    it "routes to #update" do
      expect(:put => "/ebay_connections/1").to route_to("ebay_connections#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ebay_connections/1").to route_to("ebay_connections#destroy", :id => "1")
    end

  end
end

require "spec_helper"

describe TransportesController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/transportes").to route_to("transportes#index")
    end

    it "routes to #new" do
      expect(:get => "/transportes/new").to route_to("transportes#new")
    end

    it "routes to #show" do
      expect(:get => "/transportes/1").to route_to("transportes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/transportes/1/edit").to route_to("transportes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/transportes").to route_to("transportes#create")
    end

    it "routes to #update" do
      expect(:put => "/transportes/1").to route_to("transportes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/transportes/1").to route_to("transportes#destroy", :id => "1")
    end

  end
end

require "spec_helper"

describe DuplasController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/duplas").to route_to("duplas#index")
    end

    it "routes to #new" do
      expect(:get => "/duplas/new").to route_to("duplas#new")
    end

    it "routes to #show" do
      expect(:get => "/duplas/1").to route_to("duplas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/duplas/1/edit").to route_to("duplas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/duplas").to route_to("duplas#create")
    end

    it "routes to #update" do
      expect(:put => "/duplas/1").to route_to("duplas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/duplas/1").to route_to("duplas#destroy", :id => "1")
    end

  end
end

require "spec_helper"

describe CostosController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/costos").to route_to("costos#index")
    end

    it "routes to #new" do
      expect(:get => "/costos/new").to route_to("costos#new")
    end

    it "routes to #show" do
      expect(:get => "/costos/1").to route_to("costos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/costos/1/edit").to route_to("costos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/costos").to route_to("costos#create")
    end

    it "routes to #update" do
      expect(:put => "/costos/1").to route_to("costos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/costos/1").to route_to("costos#destroy", :id => "1")
    end

  end
end

require "spec_helper"

describe VisasController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/visas").to route_to("visas#index")
    end

    it "routes to #new" do
      expect(:get => "/visas/new").to route_to("visas#new")
    end

    it "routes to #show" do
      expect(:get => "/visas/1").to route_to("visas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/visas/1/edit").to route_to("visas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/visas").to route_to("visas#create")
    end

    it "routes to #update" do
      expect(:put => "/visas/1").to route_to("visas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/visas/1").to route_to("visas#destroy", :id => "1")
    end

  end
end

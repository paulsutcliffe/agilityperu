require "spec_helper"

describe HotelesController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/hoteles").to route_to("hoteles#index")
    end

    it "routes to #new" do
      expect(:get => "/hoteles/new").to route_to("hoteles#new")
    end

    it "routes to #show" do
      expect(:get => "/hoteles/1").to route_to("hoteles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/hoteles/1/edit").to route_to("hoteles#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/hoteles").to route_to("hoteles#create")
    end

    it "routes to #update" do
      expect(:put => "/hoteles/1").to route_to("hoteles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/hoteles/1").to route_to("hoteles#destroy", :id => "1")
    end

  end
end

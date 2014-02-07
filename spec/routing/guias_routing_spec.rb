require "spec_helper"

describe GuiasController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/guias").to route_to("guias#index")
    end

    it "routes to #new" do
      expect(:get => "/guias/new").to route_to("guias#new")
    end

    it "routes to #show" do
      expect(:get => "/guias/1").to route_to("guias#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/guias/1/edit").to route_to("guias#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/guias").to route_to("guias#create")
    end

    it "routes to #update" do
      expect(:put => "/guias/1").to route_to("guias#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/guias/1").to route_to("guias#destroy", :id => "1")
    end

  end
end

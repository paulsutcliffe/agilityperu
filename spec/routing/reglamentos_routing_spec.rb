require "spec_helper"

describe ReglamentosController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/reglamentos").to route_to("reglamentos#index")
    end

    it "routes to #new" do
      expect(:get => "/reglamentos/new").to route_to("reglamentos#new")
    end

    it "routes to #show" do
      expect(:get => "/reglamentos/1").to route_to("reglamentos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/reglamentos/1/edit").to route_to("reglamentos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/reglamentos").to route_to("reglamentos#create")
    end

    it "routes to #update" do
      expect(:put => "/reglamentos/1").to route_to("reglamentos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/reglamentos/1").to route_to("reglamentos#destroy", :id => "1")
    end

  end
end

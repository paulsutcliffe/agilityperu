require "spec_helper"

describe JuecesController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/jueces").to route_to("jueces#index")
    end

    it "routes to #new" do
      expect(:get => "/jueces/new").to route_to("jueces#new")
    end

    it "routes to #show" do
      expect(:get => "/jueces/1").to route_to("jueces#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/jueces/1/edit").to route_to("jueces#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/jueces").to route_to("jueces#create")
    end

    it "routes to #update" do
      expect(:put => "/jueces/1").to route_to("jueces#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/jueces/1").to route_to("jueces#destroy", :id => "1")
    end

  end
end

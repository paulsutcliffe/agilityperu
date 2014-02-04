require "spec_helper"

describe StreamingsController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/streamings").to route_to("streamings#index")
    end

    it "routes to #new" do
      expect(:get => "/streamings/new").to route_to("streamings#new")
    end

    it "routes to #show" do
      expect(:get => "/streamings/1").to route_to("streamings#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/streamings/1/edit").to route_to("streamings#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/streamings").to route_to("streamings#create")
    end

    it "routes to #update" do
      expect(:put => "/streamings/1").to route_to("streamings#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/streamings/1").to route_to("streamings#destroy", :id => "1")
    end

  end
end

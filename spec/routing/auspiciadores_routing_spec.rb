require "spec_helper"

describe AuspiciadoresController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/auspiciadores").to route_to("auspiciadores#index")
    end

    it "routes to #new" do
      expect(:get => "/auspiciadores/new").to route_to("auspiciadores#new")
    end

    it "routes to #show" do
      expect(:get => "/auspiciadores/1").to route_to("auspiciadores#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/auspiciadores/1/edit").to route_to("auspiciadores#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/auspiciadores").to route_to("auspiciadores#create")
    end

    it "routes to #update" do
      expect(:put => "/auspiciadores/1").to route_to("auspiciadores#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/auspiciadores/1").to route_to("auspiciadores#destroy", :id => "1")
    end

  end
end

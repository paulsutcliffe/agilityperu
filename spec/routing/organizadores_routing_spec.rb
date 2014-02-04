require "spec_helper"

describe OrganizadoresController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/organizadores").to route_to("organizadores#index")
    end

    it "routes to #new" do
      expect(:get => "/organizadores/new").to route_to("organizadores#new")
    end

    it "routes to #show" do
      expect(:get => "/organizadores/1").to route_to("organizadores#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/organizadores/1/edit").to route_to("organizadores#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/organizadores").to route_to("organizadores#create")
    end

    it "routes to #update" do
      expect(:put => "/organizadores/1").to route_to("organizadores#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/organizadores/1").to route_to("organizadores#destroy", :id => "1")
    end

  end
end

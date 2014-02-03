require "spec_helper"

describe MensajesController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/mensajes").to route_to("mensajes#index")
    end

    it "routes to #new" do
      expect(:get => "/mensajes/new").to route_to("mensajes#new")
    end

    it "routes to #show" do
      expect(:get => "/mensajes/1").to route_to("mensajes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/mensajes/1/edit").to route_to("mensajes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/mensajes").to route_to("mensajes#create")
    end

    it "routes to #update" do
      expect(:put => "/mensajes/1").to route_to("mensajes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/mensajes/1").to route_to("mensajes#destroy", :id => "1")
    end

  end
end

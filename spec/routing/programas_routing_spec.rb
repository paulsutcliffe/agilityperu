require "spec_helper"

describe ProgramasController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/programas").to route_to("programas#index")
    end

    it "routes to #new" do
      expect(:get => "/programas/new").to route_to("programas#new")
    end

    it "routes to #show" do
      expect(:get => "/programas/1").to route_to("programas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/programas/1/edit").to route_to("programas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/programas").to route_to("programas#create")
    end

    it "routes to #update" do
      expect(:put => "/programas/1").to route_to("programas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/programas/1").to route_to("programas#destroy", :id => "1")
    end

  end
end

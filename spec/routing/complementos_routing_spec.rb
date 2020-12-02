require "rails_helper"

RSpec.describe ComplementosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/complementos").to route_to("complementos#index")
    end

    it "routes to #new" do
      expect(:get => "/complementos/new").to route_to("complementos#new")
    end

    it "routes to #show" do
      expect(:get => "/complementos/1").to route_to("complementos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/complementos/1/edit").to route_to("complementos#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/complementos").to route_to("complementos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/complementos/1").to route_to("complementos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/complementos/1").to route_to("complementos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/complementos/1").to route_to("complementos#destroy", :id => "1")
    end
  end
end

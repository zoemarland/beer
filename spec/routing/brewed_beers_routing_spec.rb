require "rails_helper"

RSpec.describe BrewedBeersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/brewed_beers").to route_to("brewed_beers#index")
    end

    it "routes to #new" do
      expect(:get => "/brewed_beers/new").to route_to("brewed_beers#new")
    end

    it "routes to #show" do
      expect(:get => "/brewed_beers/1").to route_to("brewed_beers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/brewed_beers/1/edit").to route_to("brewed_beers#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/brewed_beers").to route_to("brewed_beers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/brewed_beers/1").to route_to("brewed_beers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/brewed_beers/1").to route_to("brewed_beers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/brewed_beers/1").to route_to("brewed_beers#destroy", :id => "1")
    end
  end
end

require "rails_helper"

RSpec.describe TheaterScreensController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/theater_screens").to route_to("theater_screens#index")
    end

    it "routes to #new" do
      expect(:get => "/theater_screens/new").to route_to("theater_screens#new")
    end

    it "routes to #show" do
      expect(:get => "/theater_screens/1").to route_to("theater_screens#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/theater_screens/1/edit").to route_to("theater_screens#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/theater_screens").to route_to("theater_screens#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/theater_screens/1").to route_to("theater_screens#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/theater_screens/1").to route_to("theater_screens#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/theater_screens/1").to route_to("theater_screens#destroy", :id => "1")
    end

  end
end

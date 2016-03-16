require "rails_helper"

RSpec.describe TheaterSeatsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/theater_seats").to route_to("theater_seats#index")
    end

    it "routes to #new" do
      expect(:get => "/theater_seats/new").to route_to("theater_seats#new")
    end

    it "routes to #show" do
      expect(:get => "/theater_seats/1").to route_to("theater_seats#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/theater_seats/1/edit").to route_to("theater_seats#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/theater_seats").to route_to("theater_seats#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/theater_seats/1").to route_to("theater_seats#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/theater_seats/1").to route_to("theater_seats#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/theater_seats/1").to route_to("theater_seats#destroy", :id => "1")
    end

  end
end

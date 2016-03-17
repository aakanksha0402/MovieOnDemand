require "rails_helper"

RSpec.describe BookedSeatsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/booked_seats").to route_to("booked_seats#index")
    end

    it "routes to #new" do
      expect(:get => "/booked_seats/new").to route_to("booked_seats#new")
    end

    it "routes to #show" do
      expect(:get => "/booked_seats/1").to route_to("booked_seats#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/booked_seats/1/edit").to route_to("booked_seats#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/booked_seats").to route_to("booked_seats#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/booked_seats/1").to route_to("booked_seats#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/booked_seats/1").to route_to("booked_seats#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/booked_seats/1").to route_to("booked_seats#destroy", :id => "1")
    end

  end
end

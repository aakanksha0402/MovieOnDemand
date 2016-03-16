require "rails_helper"

RSpec.describe SeatPricesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/seat_prices").to route_to("seat_prices#index")
    end

    it "routes to #new" do
      expect(:get => "/seat_prices/new").to route_to("seat_prices#new")
    end

    it "routes to #show" do
      expect(:get => "/seat_prices/1").to route_to("seat_prices#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/seat_prices/1/edit").to route_to("seat_prices#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/seat_prices").to route_to("seat_prices#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/seat_prices/1").to route_to("seat_prices#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/seat_prices/1").to route_to("seat_prices#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/seat_prices/1").to route_to("seat_prices#destroy", :id => "1")
    end

  end
end

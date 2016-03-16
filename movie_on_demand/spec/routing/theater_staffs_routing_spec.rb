require "rails_helper"

RSpec.describe TheaterStaffsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/theater_staffs").to route_to("theater_staffs#index")
    end

    it "routes to #new" do
      expect(:get => "/theater_staffs/new").to route_to("theater_staffs#new")
    end

    it "routes to #show" do
      expect(:get => "/theater_staffs/1").to route_to("theater_staffs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/theater_staffs/1/edit").to route_to("theater_staffs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/theater_staffs").to route_to("theater_staffs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/theater_staffs/1").to route_to("theater_staffs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/theater_staffs/1").to route_to("theater_staffs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/theater_staffs/1").to route_to("theater_staffs#destroy", :id => "1")
    end

  end
end

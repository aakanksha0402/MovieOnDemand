require "rails_helper"

RSpec.describe StaffPermissionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/staff_permissions").to route_to("staff_permissions#index")
    end

    it "routes to #new" do
      expect(:get => "/staff_permissions/new").to route_to("staff_permissions#new")
    end

    it "routes to #show" do
      expect(:get => "/staff_permissions/1").to route_to("staff_permissions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/staff_permissions/1/edit").to route_to("staff_permissions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/staff_permissions").to route_to("staff_permissions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/staff_permissions/1").to route_to("staff_permissions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/staff_permissions/1").to route_to("staff_permissions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/staff_permissions/1").to route_to("staff_permissions#destroy", :id => "1")
    end

  end
end

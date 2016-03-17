require "rails_helper"

RSpec.describe MovieSuggestionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/movie_suggestions").to route_to("movie_suggestions#index")
    end

    it "routes to #new" do
      expect(:get => "/movie_suggestions/new").to route_to("movie_suggestions#new")
    end

    it "routes to #show" do
      expect(:get => "/movie_suggestions/1").to route_to("movie_suggestions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/movie_suggestions/1/edit").to route_to("movie_suggestions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/movie_suggestions").to route_to("movie_suggestions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/movie_suggestions/1").to route_to("movie_suggestions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/movie_suggestions/1").to route_to("movie_suggestions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/movie_suggestions/1").to route_to("movie_suggestions#destroy", :id => "1")
    end

  end
end

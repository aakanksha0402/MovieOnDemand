require 'rails_helper'

RSpec.describe "MovieSuggestions", type: :request do
  describe "GET /movie_suggestions" do
    it "works! (now write some real specs)" do
      get movie_suggestions_path
      expect(response).to have_http_status(200)
    end
  end
end

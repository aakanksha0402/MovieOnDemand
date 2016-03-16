require 'rails_helper'

RSpec.describe "TheaterScreens", type: :request do
  describe "GET /theater_screens" do
    it "works! (now write some real specs)" do
      get theater_screens_path
      expect(response).to have_http_status(200)
    end
  end
end

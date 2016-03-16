require 'rails_helper'

RSpec.describe "TheaterSeats", type: :request do
  describe "GET /theater_seats" do
    it "works! (now write some real specs)" do
      get theater_seats_path
      expect(response).to have_http_status(200)
    end
  end
end

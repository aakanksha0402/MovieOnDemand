require 'rails_helper'

RSpec.describe "BookedSeats", type: :request do
  describe "GET /booked_seats" do
    it "works! (now write some real specs)" do
      get booked_seats_path
      expect(response).to have_http_status(200)
    end
  end
end

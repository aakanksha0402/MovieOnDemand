require 'rails_helper'

RSpec.describe "SeatPrices", type: :request do
  describe "GET /seat_prices" do
    it "works! (now write some real specs)" do
      get seat_prices_path
      expect(response).to have_http_status(200)
    end
  end
end

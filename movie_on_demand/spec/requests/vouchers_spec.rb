require 'rails_helper'

RSpec.describe "Vouchers", type: :request do
  describe "GET /vouchers" do
    it "works! (now write some real specs)" do
      get vouchers_path
      expect(response).to have_http_status(200)
    end
  end
end

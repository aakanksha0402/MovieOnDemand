require 'rails_helper'

RSpec.describe "TheaterStaffs", type: :request do
  describe "GET /theater_staffs" do
    it "works! (now write some real specs)" do
      get theater_staffs_path
      expect(response).to have_http_status(200)
    end
  end
end

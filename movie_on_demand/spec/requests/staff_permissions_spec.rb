require 'rails_helper'

RSpec.describe "StaffPermissions", type: :request do
  describe "GET /staff_permissions" do
    it "works! (now write some real specs)" do
      get staff_permissions_path
      expect(response).to have_http_status(200)
    end
  end
end

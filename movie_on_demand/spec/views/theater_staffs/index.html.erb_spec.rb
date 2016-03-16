require 'rails_helper'

RSpec.describe "theater_staffs/index", type: :view do
  before(:each) do
    assign(:theater_staffs, [
      TheaterStaff.create!(
        :user => nil,
        :theater => nil,
        :staff_permission => nil,
        :is_deleted => false
      ),
      TheaterStaff.create!(
        :user => nil,
        :theater => nil,
        :staff_permission => nil,
        :is_deleted => false
      )
    ])
  end

  it "renders a list of theater_staffs" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end

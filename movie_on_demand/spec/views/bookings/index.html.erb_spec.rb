require 'rails_helper'

RSpec.describe "bookings/index", type: :view do
  before(:each) do
    assign(:bookings, [
      Booking.create!(
        :screening => nil,
        :user => nil,
        :seat_count => 1,
        :is_deleted => false
      ),
      Booking.create!(
        :screening => nil,
        :user => nil,
        :seat_count => 1,
        :is_deleted => false
      )
    ])
  end

  it "renders a list of bookings" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end

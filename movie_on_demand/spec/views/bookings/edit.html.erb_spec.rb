require 'rails_helper'

RSpec.describe "bookings/edit", type: :view do
  before(:each) do
    @booking = assign(:booking, Booking.create!(
      :screening => nil,
      :user => nil,
      :seat_count => 1,
      :is_deleted => false
    ))
  end

  it "renders the edit booking form" do
    render

    assert_select "form[action=?][method=?]", booking_path(@booking), "post" do

      assert_select "input#booking_screening_id[name=?]", "booking[screening_id]"

      assert_select "input#booking_user_id[name=?]", "booking[user_id]"

      assert_select "input#booking_seat_count[name=?]", "booking[seat_count]"

      assert_select "input#booking_is_deleted[name=?]", "booking[is_deleted]"
    end
  end
end

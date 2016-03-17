require 'rails_helper'

RSpec.describe "bookings/new", type: :view do
  before(:each) do
    assign(:booking, Booking.new(
      :screening => nil,
      :user => nil,
      :seat_count => 1,
      :is_deleted => false
    ))
  end

  it "renders new booking form" do
    render

    assert_select "form[action=?][method=?]", bookings_path, "post" do

      assert_select "input#booking_screening_id[name=?]", "booking[screening_id]"

      assert_select "input#booking_user_id[name=?]", "booking[user_id]"

      assert_select "input#booking_seat_count[name=?]", "booking[seat_count]"

      assert_select "input#booking_is_deleted[name=?]", "booking[is_deleted]"
    end
  end
end

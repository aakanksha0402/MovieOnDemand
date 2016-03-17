require 'rails_helper'

RSpec.describe "booked_seats/new", type: :view do
  before(:each) do
    assign(:booked_seat, BookedSeat.new(
      :theatre_seat => "",
      :booking => nil,
      :status_of_booked_seat => "MyString",
      :is_deleted => false
    ))
  end

  it "renders new booked_seat form" do
    render

    assert_select "form[action=?][method=?]", booked_seats_path, "post" do

      assert_select "input#booked_seat_theatre_seat[name=?]", "booked_seat[theatre_seat]"

      assert_select "input#booked_seat_booking_id[name=?]", "booked_seat[booking_id]"

      assert_select "input#booked_seat_status_of_booked_seat[name=?]", "booked_seat[status_of_booked_seat]"

      assert_select "input#booked_seat_is_deleted[name=?]", "booked_seat[is_deleted]"
    end
  end
end

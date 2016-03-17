require 'rails_helper'

RSpec.describe "booked_seats/index", type: :view do
  before(:each) do
    assign(:booked_seats, [
      BookedSeat.create!(
        :theatre_seat => "",
        :booking => nil,
        :status_of_booked_seat => "Status Of Booked Seat",
        :is_deleted => false
      ),
      BookedSeat.create!(
        :theatre_seat => "",
        :booking => nil,
        :status_of_booked_seat => "Status Of Booked Seat",
        :is_deleted => false
      )
    ])
  end

  it "renders a list of booked_seats" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Status Of Booked Seat".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end

require 'rails_helper'

RSpec.describe "booked_seats/show", type: :view do
  before(:each) do
    @booked_seat = assign(:booked_seat, BookedSeat.create!(
      :theatre_seat => "",
      :booking => nil,
      :status_of_booked_seat => "Status Of Booked Seat",
      :is_deleted => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Status Of Booked Seat/)
    expect(rendered).to match(/false/)
  end
end

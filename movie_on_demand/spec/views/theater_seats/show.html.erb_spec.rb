require 'rails_helper'

RSpec.describe "theater_seats/show", type: :view do
  before(:each) do
    @theater_seat = assign(:theater_seat, TheaterSeat.create!(
      :theater_screen => nil,
      :seat_type => "Seat Type",
      :row_count => 1,
      :column_count => 2,
      :price_multiple_factor => "",
      :price_multiple_factor => "",
      :tax_payable => "",
      :tax_payable => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Seat Type/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end

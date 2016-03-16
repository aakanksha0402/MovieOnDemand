require 'rails_helper'

RSpec.describe "theater_seats/index", type: :view do
  before(:each) do
    assign(:theater_seats, [
      TheaterSeat.create!(
        :theater_screen => nil,
        :seat_type => "Seat Type",
        :row_count => 1,
        :column_count => 2,
        :price_multiple_factor => "",
        :price_multiple_factor => "",
        :tax_payable => "",
        :tax_payable => ""
      ),
      TheaterSeat.create!(
        :theater_screen => nil,
        :seat_type => "Seat Type",
        :row_count => 1,
        :column_count => 2,
        :price_multiple_factor => "",
        :price_multiple_factor => "",
        :tax_payable => "",
        :tax_payable => ""
      )
    ])
  end

  it "renders a list of theater_seats" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Seat Type".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end

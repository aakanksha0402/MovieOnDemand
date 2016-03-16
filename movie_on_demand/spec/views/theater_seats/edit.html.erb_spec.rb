require 'rails_helper'

RSpec.describe "theater_seats/edit", type: :view do
  before(:each) do
    @theater_seat = assign(:theater_seat, TheaterSeat.create!(
      :theater_screen => nil,
      :seat_type => "MyString",
      :row_count => 1,
      :column_count => 1,
      :price_multiple_factor => "",
      :price_multiple_factor => "",
      :tax_payable => "",
      :tax_payable => ""
    ))
  end

  it "renders the edit theater_seat form" do
    render

    assert_select "form[action=?][method=?]", theater_seat_path(@theater_seat), "post" do

      assert_select "input#theater_seat_theater_screen_id[name=?]", "theater_seat[theater_screen_id]"

      assert_select "input#theater_seat_seat_type[name=?]", "theater_seat[seat_type]"

      assert_select "input#theater_seat_row_count[name=?]", "theater_seat[row_count]"

      assert_select "input#theater_seat_column_count[name=?]", "theater_seat[column_count]"

      assert_select "input#theater_seat_price_multiple_factor[name=?]", "theater_seat[price_multiple_factor]"

      assert_select "input#theater_seat_price_multiple_factor[name=?]", "theater_seat[price_multiple_factor]"

      assert_select "input#theater_seat_tax_payable[name=?]", "theater_seat[tax_payable]"

      assert_select "input#theater_seat_tax_payable[name=?]", "theater_seat[tax_payable]"
    end
  end
end

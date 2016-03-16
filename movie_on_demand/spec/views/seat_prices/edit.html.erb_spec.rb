require 'rails_helper'

RSpec.describe "seat_prices/edit", type: :view do
  before(:each) do
    @seat_price = assign(:seat_price, SeatPrice.create!(
      :theater => nil,
      :weekdays => "",
      :weekdays => "",
      :weekends => "",
      :weekends => "",
      :is_deleted => false
    ))
  end

  it "renders the edit seat_price form" do
    render

    assert_select "form[action=?][method=?]", seat_price_path(@seat_price), "post" do

      assert_select "input#seat_price_theater_id[name=?]", "seat_price[theater_id]"

      assert_select "input#seat_price_weekdays[name=?]", "seat_price[weekdays]"

      assert_select "input#seat_price_weekdays[name=?]", "seat_price[weekdays]"

      assert_select "input#seat_price_weekends[name=?]", "seat_price[weekends]"

      assert_select "input#seat_price_weekends[name=?]", "seat_price[weekends]"

      assert_select "input#seat_price_is_deleted[name=?]", "seat_price[is_deleted]"
    end
  end
end

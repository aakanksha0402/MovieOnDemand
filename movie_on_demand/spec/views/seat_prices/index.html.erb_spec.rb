require 'rails_helper'

RSpec.describe "seat_prices/index", type: :view do
  before(:each) do
    assign(:seat_prices, [
      SeatPrice.create!(
        :theater => nil,
        :weekdays => "",
        :weekdays => "",
        :weekends => "",
        :weekends => "",
        :is_deleted => false
      ),
      SeatPrice.create!(
        :theater => nil,
        :weekdays => "",
        :weekdays => "",
        :weekends => "",
        :weekends => "",
        :is_deleted => false
      )
    ])
  end

  it "renders a list of seat_prices" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end

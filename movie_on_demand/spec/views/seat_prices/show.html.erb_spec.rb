require 'rails_helper'

RSpec.describe "seat_prices/show", type: :view do
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

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
  end
end

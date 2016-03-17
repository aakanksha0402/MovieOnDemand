require 'rails_helper'

RSpec.describe "bookings/show", type: :view do
  before(:each) do
    @booking = assign(:booking, Booking.create!(
      :screening => nil,
      :user => nil,
      :seat_count => 1,
      :is_deleted => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/false/)
  end
end

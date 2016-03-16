require 'rails_helper'

RSpec.describe "offers/show", type: :view do
  before(:each) do
    @offer = assign(:offer, Offer.create!(
      :theater => nil,
      :anme => "Anme",
      :description => "Description",
      :discount => "9.99",
      :promo_code => "Promo Code",
      :is_deleted => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Anme/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Promo Code/)
    expect(rendered).to match(/false/)
  end
end

require 'rails_helper'

RSpec.describe "offers/index", type: :view do
  before(:each) do
    assign(:offers, [
      Offer.create!(
        :theater => nil,
        :anme => "Anme",
        :description => "Description",
        :discount => "9.99",
        :promo_code => "Promo Code",
        :is_deleted => false
      ),
      Offer.create!(
        :theater => nil,
        :anme => "Anme",
        :description => "Description",
        :discount => "9.99",
        :promo_code => "Promo Code",
        :is_deleted => false
      )
    ])
  end

  it "renders a list of offers" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Anme".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Promo Code".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end

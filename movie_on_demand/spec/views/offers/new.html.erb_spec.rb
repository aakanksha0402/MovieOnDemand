require 'rails_helper'

RSpec.describe "offers/new", type: :view do
  before(:each) do
    assign(:offer, Offer.new(
      :theater => nil,
      :anme => "MyString",
      :description => "MyString",
      :discount => "9.99",
      :promo_code => "MyString",
      :is_deleted => false
    ))
  end

  it "renders new offer form" do
    render

    assert_select "form[action=?][method=?]", offers_path, "post" do

      assert_select "input#offer_theater_id[name=?]", "offer[theater_id]"

      assert_select "input#offer_anme[name=?]", "offer[anme]"

      assert_select "input#offer_description[name=?]", "offer[description]"

      assert_select "input#offer_discount[name=?]", "offer[discount]"

      assert_select "input#offer_promo_code[name=?]", "offer[promo_code]"

      assert_select "input#offer_is_deleted[name=?]", "offer[is_deleted]"
    end
  end
end

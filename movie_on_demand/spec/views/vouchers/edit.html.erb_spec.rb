require 'rails_helper'

RSpec.describe "vouchers/edit", type: :view do
  before(:each) do
    @voucher = assign(:voucher, Voucher.create!(
      :theater => nil,
      :theater_screen => nil,
      :name => "MyString",
      :description => "MyString",
      :price => "9.99",
      :is_deleted => false
    ))
  end

  it "renders the edit voucher form" do
    render

    assert_select "form[action=?][method=?]", voucher_path(@voucher), "post" do

      assert_select "input#voucher_theater_id[name=?]", "voucher[theater_id]"

      assert_select "input#voucher_theater_screen_id[name=?]", "voucher[theater_screen_id]"

      assert_select "input#voucher_name[name=?]", "voucher[name]"

      assert_select "input#voucher_description[name=?]", "voucher[description]"

      assert_select "input#voucher_price[name=?]", "voucher[price]"

      assert_select "input#voucher_is_deleted[name=?]", "voucher[is_deleted]"
    end
  end
end

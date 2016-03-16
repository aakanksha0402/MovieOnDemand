require 'rails_helper'

RSpec.describe "vouchers/new", type: :view do
  before(:each) do
    assign(:voucher, Voucher.new(
      :theater => nil,
      :theater_screen => nil,
      :name => "MyString",
      :description => "MyString",
      :price => "9.99",
      :is_deleted => false
    ))
  end

  it "renders new voucher form" do
    render

    assert_select "form[action=?][method=?]", vouchers_path, "post" do

      assert_select "input#voucher_theater_id[name=?]", "voucher[theater_id]"

      assert_select "input#voucher_theater_screen_id[name=?]", "voucher[theater_screen_id]"

      assert_select "input#voucher_name[name=?]", "voucher[name]"

      assert_select "input#voucher_description[name=?]", "voucher[description]"

      assert_select "input#voucher_price[name=?]", "voucher[price]"

      assert_select "input#voucher_is_deleted[name=?]", "voucher[is_deleted]"
    end
  end
end

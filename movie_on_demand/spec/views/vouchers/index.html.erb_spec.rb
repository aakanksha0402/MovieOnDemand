require 'rails_helper'

RSpec.describe "vouchers/index", type: :view do
  before(:each) do
    assign(:vouchers, [
      Voucher.create!(
        :theater => nil,
        :theater_screen => nil,
        :name => "Name",
        :description => "Description",
        :price => "9.99",
        :is_deleted => false
      ),
      Voucher.create!(
        :theater => nil,
        :theater_screen => nil,
        :name => "Name",
        :description => "Description",
        :price => "9.99",
        :is_deleted => false
      )
    ])
  end

  it "renders a list of vouchers" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end

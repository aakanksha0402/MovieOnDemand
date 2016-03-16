require 'rails_helper'

RSpec.describe "staff_permissions/index", type: :view do
  before(:each) do
    assign(:staff_permissions, [
      StaffPermission.create!(
        :manage_seat => false,
        :manage_vouchers => false,
        :manage_show_time => false,
        :manage_tax_info => false,
        :manage_price_per_day => false,
        :is_deleted => false
      ),
      StaffPermission.create!(
        :manage_seat => false,
        :manage_vouchers => false,
        :manage_show_time => false,
        :manage_tax_info => false,
        :manage_price_per_day => false,
        :is_deleted => false
      )
    ])
  end

  it "renders a list of staff_permissions" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end

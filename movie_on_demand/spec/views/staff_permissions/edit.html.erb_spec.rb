require 'rails_helper'

RSpec.describe "staff_permissions/edit", type: :view do
  before(:each) do
    @staff_permission = assign(:staff_permission, StaffPermission.create!(
      :manage_seat => false,
      :manage_vouchers => false,
      :manage_show_time => false,
      :manage_tax_info => false,
      :manage_price_per_day => false,
      :is_deleted => false
    ))
  end

  it "renders the edit staff_permission form" do
    render

    assert_select "form[action=?][method=?]", staff_permission_path(@staff_permission), "post" do

      assert_select "input#staff_permission_manage_seat[name=?]", "staff_permission[manage_seat]"

      assert_select "input#staff_permission_manage_vouchers[name=?]", "staff_permission[manage_vouchers]"

      assert_select "input#staff_permission_manage_show_time[name=?]", "staff_permission[manage_show_time]"

      assert_select "input#staff_permission_manage_tax_info[name=?]", "staff_permission[manage_tax_info]"

      assert_select "input#staff_permission_manage_price_per_day[name=?]", "staff_permission[manage_price_per_day]"

      assert_select "input#staff_permission_is_deleted[name=?]", "staff_permission[is_deleted]"
    end
  end
end

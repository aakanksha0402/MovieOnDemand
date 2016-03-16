require 'rails_helper'

RSpec.describe "staff_permissions/show", type: :view do
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

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
  end
end

require 'rails_helper'

RSpec.describe "vouchers/show", type: :view do
  before(:each) do
    @voucher = assign(:voucher, Voucher.create!(
      :theater => nil,
      :theater_screen => nil,
      :name => "Name",
      :description => "Description",
      :price => "9.99",
      :is_deleted => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/false/)
  end
end

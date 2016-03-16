require 'rails_helper'

RSpec.describe "theater_staffs/show", type: :view do
  before(:each) do
    @theater_staff = assign(:theater_staff, TheaterStaff.create!(
      :user => nil,
      :theater => nil,
      :staff_permission => nil,
      :is_deleted => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
  end
end

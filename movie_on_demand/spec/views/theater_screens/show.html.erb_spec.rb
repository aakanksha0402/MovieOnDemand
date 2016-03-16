require 'rails_helper'

RSpec.describe "theater_screens/show", type: :view do
  before(:each) do
    @theater_screen = assign(:theater_screen, TheaterScreen.create!(
      :theater => nil,
      :screen_no => 1,
      :is_deleted => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/false/)
  end
end

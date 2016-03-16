require 'rails_helper'

RSpec.describe "theater_screens/index", type: :view do
  before(:each) do
    assign(:theater_screens, [
      TheaterScreen.create!(
        :theater => nil,
        :screen_no => 1,
        :is_deleted => false
      ),
      TheaterScreen.create!(
        :theater => nil,
        :screen_no => 1,
        :is_deleted => false
      )
    ])
  end

  it "renders a list of theater_screens" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end

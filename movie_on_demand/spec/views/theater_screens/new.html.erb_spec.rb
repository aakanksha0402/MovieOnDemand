require 'rails_helper'

RSpec.describe "theater_screens/new", type: :view do
  before(:each) do
    assign(:theater_screen, TheaterScreen.new(
      :theater => nil,
      :screen_no => 1,
      :is_deleted => false
    ))
  end

  it "renders new theater_screen form" do
    render

    assert_select "form[action=?][method=?]", theater_screens_path, "post" do

      assert_select "input#theater_screen_theater_id[name=?]", "theater_screen[theater_id]"

      assert_select "input#theater_screen_screen_no[name=?]", "theater_screen[screen_no]"

      assert_select "input#theater_screen_is_deleted[name=?]", "theater_screen[is_deleted]"
    end
  end
end

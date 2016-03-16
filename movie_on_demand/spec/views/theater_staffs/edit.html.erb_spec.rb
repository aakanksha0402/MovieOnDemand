require 'rails_helper'

RSpec.describe "theater_staffs/edit", type: :view do
  before(:each) do
    @theater_staff = assign(:theater_staff, TheaterStaff.create!(
      :user => nil,
      :theater => nil,
      :staff_permission => nil,
      :is_deleted => false
    ))
  end

  it "renders the edit theater_staff form" do
    render

    assert_select "form[action=?][method=?]", theater_staff_path(@theater_staff), "post" do

      assert_select "input#theater_staff_user_id[name=?]", "theater_staff[user_id]"

      assert_select "input#theater_staff_theater_id[name=?]", "theater_staff[theater_id]"

      assert_select "input#theater_staff_staff_permission_id[name=?]", "theater_staff[staff_permission_id]"

      assert_select "input#theater_staff_is_deleted[name=?]", "theater_staff[is_deleted]"
    end
  end
end

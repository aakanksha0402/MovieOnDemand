require 'rails_helper'

RSpec.describe "theater_staffs/new", type: :view do
  before(:each) do
    assign(:theater_staff, TheaterStaff.new(
      :user => nil,
      :theater => nil,
      :staff_permission => nil,
      :is_deleted => false
    ))
  end

  it "renders new theater_staff form" do
    render

    assert_select "form[action=?][method=?]", theater_staffs_path, "post" do

      assert_select "input#theater_staff_user_id[name=?]", "theater_staff[user_id]"

      assert_select "input#theater_staff_theater_id[name=?]", "theater_staff[theater_id]"

      assert_select "input#theater_staff_staff_permission_id[name=?]", "theater_staff[staff_permission_id]"

      assert_select "input#theater_staff_is_deleted[name=?]", "theater_staff[is_deleted]"
    end
  end
end

require 'rails_helper'

RSpec.describe "theaters/new", type: :view do
  before(:each) do
    assign(:theater, Theater.new(
      :users => nil,
      :name => "MyString",
      :phone => 1,
      :address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :country => "MyString",
      :pincode => 1,
      :unique_key => "MyString",
      :total_screens => 1,
      :enable => false,
      :is_deleted => false
    ))
  end

  it "renders new theater form" do
    render

    assert_select "form[action=?][method=?]", theaters_path, "post" do

      assert_select "input#theater_users_id[name=?]", "theater[users_id]"

      assert_select "input#theater_name[name=?]", "theater[name]"

      assert_select "input#theater_phone[name=?]", "theater[phone]"

      assert_select "input#theater_address[name=?]", "theater[address]"

      assert_select "input#theater_city[name=?]", "theater[city]"

      assert_select "input#theater_state[name=?]", "theater[state]"

      assert_select "input#theater_country[name=?]", "theater[country]"

      assert_select "input#theater_pincode[name=?]", "theater[pincode]"

      assert_select "input#theater_unique_key[name=?]", "theater[unique_key]"

      assert_select "input#theater_total_screens[name=?]", "theater[total_screens]"

      assert_select "input#theater_enable[name=?]", "theater[enable]"

      assert_select "input#theater_is_deleted[name=?]", "theater[is_deleted]"
    end
  end
end

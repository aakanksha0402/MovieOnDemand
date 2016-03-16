require 'rails_helper'

RSpec.describe "theaters/index", type: :view do
  before(:each) do
    assign(:theaters, [
      Theater.create!(
        :users => nil,
        :name => "Name",
        :phone => 1,
        :address => "Address",
        :city => "City",
        :state => "State",
        :country => "Country",
        :pincode => 2,
        :unique_key => "Unique Key",
        :total_screens => 3,
        :enable => false,
        :is_deleted => false
      ),
      Theater.create!(
        :users => nil,
        :name => "Name",
        :phone => 1,
        :address => "Address",
        :city => "City",
        :state => "State",
        :country => "Country",
        :pincode => 2,
        :unique_key => "Unique Key",
        :total_screens => 3,
        :enable => false,
        :is_deleted => false
      )
    ])
  end

  it "renders a list of theaters" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Unique Key".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end

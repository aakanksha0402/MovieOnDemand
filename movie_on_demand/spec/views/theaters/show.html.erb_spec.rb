require 'rails_helper'

RSpec.describe "theaters/show", type: :view do
  before(:each) do
    @theater = assign(:theater, Theater.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Unique Key/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
  end
end

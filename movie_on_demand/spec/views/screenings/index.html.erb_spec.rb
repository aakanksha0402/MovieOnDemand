require 'rails_helper'

RSpec.describe "screenings/index", type: :view do
  before(:each) do
    assign(:screenings, [
      Screening.create!(
        :movie => nil,
        :user => nil,
        :theatre => nil,
        :offer => nil,
        :approval_filmmaker => false,
        :approval_theatre => false,
        :threshold => 1,
        :status => false,
        :is_deleted => false
      ),
      Screening.create!(
        :movie => nil,
        :user => nil,
        :theatre => nil,
        :offer => nil,
        :approval_filmmaker => false,
        :approval_theatre => false,
        :threshold => 1,
        :status => false,
        :is_deleted => false
      )
    ])
  end

  it "renders a list of screenings" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end

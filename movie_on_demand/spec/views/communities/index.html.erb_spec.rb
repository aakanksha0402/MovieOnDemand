require 'rails_helper'

RSpec.describe "communities/index", type: :view do
  before(:each) do
    assign(:communities, [
      Community.create!(
        :user => nil,
        :movie => nil,
        :description => "MyText"
      ),
      Community.create!(
        :user => nil,
        :movie => nil,
        :description => "MyText"
      )
    ])
  end

  it "renders a list of communities" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

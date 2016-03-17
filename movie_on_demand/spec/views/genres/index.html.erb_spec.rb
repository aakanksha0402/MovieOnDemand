require 'rails_helper'

RSpec.describe "genres/index", type: :view do
  before(:each) do
    assign(:genres, [
      Genre.create!(
        :name => "Name",
        :parent_id => 1,
        :is_deleted => false
      ),
      Genre.create!(
        :name => "Name",
        :parent_id => 1,
        :is_deleted => false
      )
    ])
  end

  it "renders a list of genres" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end

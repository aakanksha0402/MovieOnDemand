require 'rails_helper'

RSpec.describe "movie_suggestions/index", type: :view do
  before(:each) do
    assign(:movie_suggestions, [
      MovieSuggestion.create!(
        :user => nil,
        :name => "Name",
        :details => "Details",
        :status => false,
        :is_deleted => false
      ),
      MovieSuggestion.create!(
        :user => nil,
        :name => "Name",
        :details => "Details",
        :status => false,
        :is_deleted => false
      )
    ])
  end

  it "renders a list of movie_suggestions" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Details".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end

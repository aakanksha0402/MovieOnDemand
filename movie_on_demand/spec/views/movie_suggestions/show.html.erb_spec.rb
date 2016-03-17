require 'rails_helper'

RSpec.describe "movie_suggestions/show", type: :view do
  before(:each) do
    @movie_suggestion = assign(:movie_suggestion, MovieSuggestion.create!(
      :user => nil,
      :name => "Name",
      :details => "Details",
      :status => false,
      :is_deleted => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Details/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
  end
end

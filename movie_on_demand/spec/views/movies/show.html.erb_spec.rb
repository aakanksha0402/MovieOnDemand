require 'rails_helper'

RSpec.describe "movies/show", type: :view do
  before(:each) do
    @movie = assign(:movie, Movie.create!(
      :name => "Name",
      :director => "Director",
      :starring => "Starring",
      :rating => "9.99",
      :description => "MyText",
      :duration => "Duration",
      :screening_count => 1,
      :is_delete => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Director/)
    expect(rendered).to match(/Starring/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Duration/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/false/)
  end
end

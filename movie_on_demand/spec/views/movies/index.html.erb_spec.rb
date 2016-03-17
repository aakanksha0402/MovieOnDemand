require 'rails_helper'

RSpec.describe "movies/index", type: :view do
  before(:each) do
    assign(:movies, [
      Movie.create!(
        :name => "Name",
        :director => "Director",
        :starring => "Starring",
        :rating => "9.99",
        :description => "MyText",
        :duration => "Duration",
        :screening_count => 1,
        :is_delete => false
      ),
      Movie.create!(
        :name => "Name",
        :director => "Director",
        :starring => "Starring",
        :rating => "9.99",
        :description => "MyText",
        :duration => "Duration",
        :screening_count => 1,
        :is_delete => false
      )
    ])
  end

  it "renders a list of movies" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Director".to_s, :count => 2
    assert_select "tr>td", :text => "Starring".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Duration".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end

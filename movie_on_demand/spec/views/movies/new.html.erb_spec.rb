require 'rails_helper'

RSpec.describe "movies/new", type: :view do
  before(:each) do
    assign(:movie, Movie.new(
      :name => "MyString",
      :director => "MyString",
      :starring => "MyString",
      :rating => "9.99",
      :description => "MyText",
      :duration => "MyString",
      :screening_count => 1,
      :is_delete => false
    ))
  end

  it "renders new movie form" do
    render

    assert_select "form[action=?][method=?]", movies_path, "post" do

      assert_select "input#movie_name[name=?]", "movie[name]"

      assert_select "input#movie_director[name=?]", "movie[director]"

      assert_select "input#movie_starring[name=?]", "movie[starring]"

      assert_select "input#movie_rating[name=?]", "movie[rating]"

      assert_select "textarea#movie_description[name=?]", "movie[description]"

      assert_select "input#movie_duration[name=?]", "movie[duration]"

      assert_select "input#movie_screening_count[name=?]", "movie[screening_count]"

      assert_select "input#movie_is_delete[name=?]", "movie[is_delete]"
    end
  end
end

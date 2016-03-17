require 'rails_helper'

RSpec.describe "movie_suggestions/new", type: :view do
  before(:each) do
    assign(:movie_suggestion, MovieSuggestion.new(
      :user => nil,
      :name => "MyString",
      :details => "MyString",
      :status => false,
      :is_deleted => false
    ))
  end

  it "renders new movie_suggestion form" do
    render

    assert_select "form[action=?][method=?]", movie_suggestions_path, "post" do

      assert_select "input#movie_suggestion_user_id[name=?]", "movie_suggestion[user_id]"

      assert_select "input#movie_suggestion_name[name=?]", "movie_suggestion[name]"

      assert_select "input#movie_suggestion_details[name=?]", "movie_suggestion[details]"

      assert_select "input#movie_suggestion_status[name=?]", "movie_suggestion[status]"

      assert_select "input#movie_suggestion_is_deleted[name=?]", "movie_suggestion[is_deleted]"
    end
  end
end

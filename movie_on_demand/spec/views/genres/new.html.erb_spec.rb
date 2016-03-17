require 'rails_helper'

RSpec.describe "genres/new", type: :view do
  before(:each) do
    assign(:genre, Genre.new(
      :name => "MyString",
      :parent_id => 1,
      :is_deleted => false
    ))
  end

  it "renders new genre form" do
    render

    assert_select "form[action=?][method=?]", genres_path, "post" do

      assert_select "input#genre_name[name=?]", "genre[name]"

      assert_select "input#genre_parent_id[name=?]", "genre[parent_id]"

      assert_select "input#genre_is_deleted[name=?]", "genre[is_deleted]"
    end
  end
end

require 'rails_helper'

RSpec.describe "comments/edit", type: :view do
  before(:each) do
    @comment = assign(:comment, Comment.create!(
      :community => nil,
      :user => nil,
      :comment => "MyText"
    ))
  end

  it "renders the edit comment form" do
    render

    assert_select "form[action=?][method=?]", comment_path(@comment), "post" do

      assert_select "input#comment_community_id[name=?]", "comment[community_id]"

      assert_select "input#comment_user_id[name=?]", "comment[user_id]"

      assert_select "textarea#comment_comment[name=?]", "comment[comment]"
    end
  end
end

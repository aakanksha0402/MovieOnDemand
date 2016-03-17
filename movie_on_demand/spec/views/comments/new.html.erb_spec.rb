require 'rails_helper'

RSpec.describe "comments/new", type: :view do
  before(:each) do
    assign(:comment, Comment.new(
      :community => nil,
      :user => nil,
      :comment => "MyText"
    ))
  end

  it "renders new comment form" do
    render

    assert_select "form[action=?][method=?]", comments_path, "post" do

      assert_select "input#comment_community_id[name=?]", "comment[community_id]"

      assert_select "input#comment_user_id[name=?]", "comment[user_id]"

      assert_select "textarea#comment_comment[name=?]", "comment[comment]"
    end
  end
end

require 'rails_helper'

RSpec.describe "communities/new", type: :view do
  before(:each) do
    assign(:community, Community.new(
      :user => nil,
      :movie => nil,
      :description => "MyText"
    ))
  end

  it "renders new community form" do
    render

    assert_select "form[action=?][method=?]", communities_path, "post" do

      assert_select "input#community_user_id[name=?]", "community[user_id]"

      assert_select "input#community_movie_id[name=?]", "community[movie_id]"

      assert_select "textarea#community_description[name=?]", "community[description]"
    end
  end
end

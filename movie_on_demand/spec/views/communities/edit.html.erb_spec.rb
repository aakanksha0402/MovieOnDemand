require 'rails_helper'

RSpec.describe "communities/edit", type: :view do
  before(:each) do
    @community = assign(:community, Community.create!(
      :user => nil,
      :movie => nil,
      :description => "MyText"
    ))
  end

  it "renders the edit community form" do
    render

    assert_select "form[action=?][method=?]", community_path(@community), "post" do

      assert_select "input#community_user_id[name=?]", "community[user_id]"

      assert_select "input#community_movie_id[name=?]", "community[movie_id]"

      assert_select "textarea#community_description[name=?]", "community[description]"
    end
  end
end

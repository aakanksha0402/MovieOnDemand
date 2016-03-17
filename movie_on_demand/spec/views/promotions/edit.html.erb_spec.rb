require 'rails_helper'

RSpec.describe "promotions/edit", type: :view do
  before(:each) do
    @promotion = assign(:promotion, Promotion.create!(
      :movie => nil,
      :whatsapp => "MyText",
      :facebook => "MyText",
      :twitter => "MyText",
      :link => "MyString",
      :is_deleted => false
    ))
  end

  it "renders the edit promotion form" do
    render

    assert_select "form[action=?][method=?]", promotion_path(@promotion), "post" do

      assert_select "input#promotion_movie_id[name=?]", "promotion[movie_id]"

      assert_select "textarea#promotion_whatsapp[name=?]", "promotion[whatsapp]"

      assert_select "textarea#promotion_facebook[name=?]", "promotion[facebook]"

      assert_select "textarea#promotion_twitter[name=?]", "promotion[twitter]"

      assert_select "input#promotion_link[name=?]", "promotion[link]"

      assert_select "input#promotion_is_deleted[name=?]", "promotion[is_deleted]"
    end
  end
end

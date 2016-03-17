require 'rails_helper'

RSpec.describe "promotions/index", type: :view do
  before(:each) do
    assign(:promotions, [
      Promotion.create!(
        :movie => nil,
        :whatsapp => "MyText",
        :facebook => "MyText",
        :twitter => "MyText",
        :link => "Link",
        :is_deleted => false
      ),
      Promotion.create!(
        :movie => nil,
        :whatsapp => "MyText",
        :facebook => "MyText",
        :twitter => "MyText",
        :link => "Link",
        :is_deleted => false
      )
    ])
  end

  it "renders a list of promotions" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Link".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end

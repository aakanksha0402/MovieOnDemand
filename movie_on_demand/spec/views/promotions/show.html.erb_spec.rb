require 'rails_helper'

RSpec.describe "promotions/show", type: :view do
  before(:each) do
    @promotion = assign(:promotion, Promotion.create!(
      :movie => nil,
      :whatsapp => "MyText",
      :facebook => "MyText",
      :twitter => "MyText",
      :link => "Link",
      :is_deleted => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Link/)
    expect(rendered).to match(/false/)
  end
end

require 'rails_helper'

RSpec.describe "surveys/show", type: :view do
  before(:each) do
    @survey = assign(:survey, Survey.create!(
      :title => "Title",
      :description => "MyText",
      :is_deleted => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
  end
end

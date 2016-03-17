require 'rails_helper'

RSpec.describe "languages/show", type: :view do
  before(:each) do
    @language = assign(:language, Language.create!(
      :language => "Language",
      :is_deleted => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Language/)
    expect(rendered).to match(/false/)
  end
end

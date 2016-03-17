require 'rails_helper'

RSpec.describe "languages/index", type: :view do
  before(:each) do
    assign(:languages, [
      Language.create!(
        :language => "Language",
        :is_deleted => false
      ),
      Language.create!(
        :language => "Language",
        :is_deleted => false
      )
    ])
  end

  it "renders a list of languages" do
    render
    assert_select "tr>td", :text => "Language".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end

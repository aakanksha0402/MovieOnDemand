require 'rails_helper'

RSpec.describe "languages/edit", type: :view do
  before(:each) do
    @language = assign(:language, Language.create!(
      :language => "MyString",
      :is_deleted => false
    ))
  end

  it "renders the edit language form" do
    render

    assert_select "form[action=?][method=?]", language_path(@language), "post" do

      assert_select "input#language_language[name=?]", "language[language]"

      assert_select "input#language_is_deleted[name=?]", "language[is_deleted]"
    end
  end
end

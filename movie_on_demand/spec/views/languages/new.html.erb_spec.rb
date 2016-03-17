require 'rails_helper'

RSpec.describe "languages/new", type: :view do
  before(:each) do
    assign(:language, Language.new(
      :language => "MyString",
      :is_deleted => false
    ))
  end

  it "renders new language form" do
    render

    assert_select "form[action=?][method=?]", languages_path, "post" do

      assert_select "input#language_language[name=?]", "language[language]"

      assert_select "input#language_is_deleted[name=?]", "language[is_deleted]"
    end
  end
end

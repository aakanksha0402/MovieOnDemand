require 'rails_helper'

RSpec.describe "surveys/new", type: :view do
  before(:each) do
    assign(:survey, Survey.new(
      :title => "MyString",
      :description => "MyText",
      :is_deleted => false
    ))
  end

  it "renders new survey form" do
    render

    assert_select "form[action=?][method=?]", surveys_path, "post" do

      assert_select "input#survey_title[name=?]", "survey[title]"

      assert_select "textarea#survey_description[name=?]", "survey[description]"

      assert_select "input#survey_is_deleted[name=?]", "survey[is_deleted]"
    end
  end
end

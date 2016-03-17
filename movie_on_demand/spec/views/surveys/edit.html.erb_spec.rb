require 'rails_helper'

RSpec.describe "surveys/edit", type: :view do
  before(:each) do
    @survey = assign(:survey, Survey.create!(
      :title => "MyString",
      :description => "MyText",
      :is_deleted => false
    ))
  end

  it "renders the edit survey form" do
    render

    assert_select "form[action=?][method=?]", survey_path(@survey), "post" do

      assert_select "input#survey_title[name=?]", "survey[title]"

      assert_select "textarea#survey_description[name=?]", "survey[description]"

      assert_select "input#survey_is_deleted[name=?]", "survey[is_deleted]"
    end
  end
end

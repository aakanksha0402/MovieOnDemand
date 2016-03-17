require 'rails_helper'

RSpec.describe "questions/new", type: :view do
  before(:each) do
    assign(:question, Question.new(
      :question_name => "MyString",
      :is_deleted => false
    ))
  end

  it "renders new question form" do
    render

    assert_select "form[action=?][method=?]", questions_path, "post" do

      assert_select "input#question_question_name[name=?]", "question[question_name]"

      assert_select "input#question_is_deleted[name=?]", "question[is_deleted]"
    end
  end
end

require 'rails_helper'

RSpec.describe "questions/edit", type: :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      :question_name => "MyString",
      :is_deleted => false
    ))
  end

  it "renders the edit question form" do
    render

    assert_select "form[action=?][method=?]", question_path(@question), "post" do

      assert_select "input#question_question_name[name=?]", "question[question_name]"

      assert_select "input#question_is_deleted[name=?]", "question[is_deleted]"
    end
  end
end

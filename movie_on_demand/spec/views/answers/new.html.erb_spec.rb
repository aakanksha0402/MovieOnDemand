require 'rails_helper'

RSpec.describe "answers/new", type: :view do
  before(:each) do
    assign(:answer, Answer.new(
      :question => nil,
      :answer_name => "MyString",
      :is_deleted => false
    ))
  end

  it "renders new answer form" do
    render

    assert_select "form[action=?][method=?]", answers_path, "post" do

      assert_select "input#answer_question_id[name=?]", "answer[question_id]"

      assert_select "input#answer_answer_name[name=?]", "answer[answer_name]"

      assert_select "input#answer_is_deleted[name=?]", "answer[is_deleted]"
    end
  end
end

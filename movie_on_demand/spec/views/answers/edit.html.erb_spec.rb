require 'rails_helper'

RSpec.describe "answers/edit", type: :view do
  before(:each) do
    @answer = assign(:answer, Answer.create!(
      :question => nil,
      :answer_name => "MyString",
      :is_deleted => false
    ))
  end

  it "renders the edit answer form" do
    render

    assert_select "form[action=?][method=?]", answer_path(@answer), "post" do

      assert_select "input#answer_question_id[name=?]", "answer[question_id]"

      assert_select "input#answer_answer_name[name=?]", "answer[answer_name]"

      assert_select "input#answer_is_deleted[name=?]", "answer[is_deleted]"
    end
  end
end

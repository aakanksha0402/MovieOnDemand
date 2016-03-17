require 'rails_helper'

RSpec.describe "questions/index", type: :view do
  before(:each) do
    assign(:questions, [
      Question.create!(
        :question_name => "Question Name",
        :is_deleted => false
      ),
      Question.create!(
        :question_name => "Question Name",
        :is_deleted => false
      )
    ])
  end

  it "renders a list of questions" do
    render
    assert_select "tr>td", :text => "Question Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end

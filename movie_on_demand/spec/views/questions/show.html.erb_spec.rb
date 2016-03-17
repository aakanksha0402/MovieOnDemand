require 'rails_helper'

RSpec.describe "questions/show", type: :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      :question_name => "Question Name",
      :is_deleted => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Question Name/)
    expect(rendered).to match(/false/)
  end
end

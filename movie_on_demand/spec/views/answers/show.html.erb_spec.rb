require 'rails_helper'

RSpec.describe "answers/show", type: :view do
  before(:each) do
    @answer = assign(:answer, Answer.create!(
      :question => nil,
      :answer_name => "Answer Name",
      :is_deleted => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Answer Name/)
    expect(rendered).to match(/false/)
  end
end

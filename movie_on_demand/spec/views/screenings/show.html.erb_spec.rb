require 'rails_helper'

RSpec.describe "screenings/show", type: :view do
  before(:each) do
    @screening = assign(:screening, Screening.create!(
      :movie => nil,
      :user => nil,
      :theatre => nil,
      :offer => nil,
      :approval_filmmaker => false,
      :approval_theatre => false,
      :threshold => 1,
      :status => false,
      :is_deleted => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
  end
end

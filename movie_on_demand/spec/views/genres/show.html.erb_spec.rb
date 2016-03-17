require 'rails_helper'

RSpec.describe "genres/show", type: :view do
  before(:each) do
    @genre = assign(:genre, Genre.create!(
      :name => "Name",
      :parent_id => 1,
      :is_deleted => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/false/)
  end
end

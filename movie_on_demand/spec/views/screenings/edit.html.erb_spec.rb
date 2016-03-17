require 'rails_helper'

RSpec.describe "screenings/edit", type: :view do
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

  it "renders the edit screening form" do
    render

    assert_select "form[action=?][method=?]", screening_path(@screening), "post" do

      assert_select "input#screening_movie_id[name=?]", "screening[movie_id]"

      assert_select "input#screening_user_id[name=?]", "screening[user_id]"

      assert_select "input#screening_theatre_id[name=?]", "screening[theatre_id]"

      assert_select "input#screening_offer_id[name=?]", "screening[offer_id]"

      assert_select "input#screening_approval_filmmaker[name=?]", "screening[approval_filmmaker]"

      assert_select "input#screening_approval_theatre[name=?]", "screening[approval_theatre]"

      assert_select "input#screening_threshold[name=?]", "screening[threshold]"

      assert_select "input#screening_status[name=?]", "screening[status]"

      assert_select "input#screening_is_deleted[name=?]", "screening[is_deleted]"
    end
  end
end

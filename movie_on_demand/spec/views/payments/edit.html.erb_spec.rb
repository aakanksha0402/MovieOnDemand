require 'rails_helper'

RSpec.describe "payments/edit", type: :view do
  before(:each) do
    @payment = assign(:payment, Payment.create!(
      :bookedseat => "",
      :amount => "9.99",
      :mode_of_payment => "MyString",
      :status_of_payment => false,
      :is_deleted => false
    ))
  end

  it "renders the edit payment form" do
    render

    assert_select "form[action=?][method=?]", payment_path(@payment), "post" do

      assert_select "input#payment_bookedseat[name=?]", "payment[bookedseat]"

      assert_select "input#payment_amount[name=?]", "payment[amount]"

      assert_select "input#payment_mode_of_payment[name=?]", "payment[mode_of_payment]"

      assert_select "input#payment_status_of_payment[name=?]", "payment[status_of_payment]"

      assert_select "input#payment_is_deleted[name=?]", "payment[is_deleted]"
    end
  end
end

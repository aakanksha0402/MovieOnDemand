require 'rails_helper'

RSpec.describe "payments/index", type: :view do
  before(:each) do
    assign(:payments, [
      Payment.create!(
        :bookedseat => "",
        :amount => "9.99",
        :mode_of_payment => "Mode Of Payment",
        :status_of_payment => false,
        :is_deleted => false
      ),
      Payment.create!(
        :bookedseat => "",
        :amount => "9.99",
        :mode_of_payment => "Mode Of Payment",
        :status_of_payment => false,
        :is_deleted => false
      )
    ])
  end

  it "renders a list of payments" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Mode Of Payment".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end

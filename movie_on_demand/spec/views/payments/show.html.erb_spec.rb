require 'rails_helper'

RSpec.describe "payments/show", type: :view do
  before(:each) do
    @payment = assign(:payment, Payment.create!(
      :bookedseat => "",
      :amount => "9.99",
      :mode_of_payment => "Mode Of Payment",
      :status_of_payment => false,
      :is_deleted => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Mode Of Payment/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
  end
end

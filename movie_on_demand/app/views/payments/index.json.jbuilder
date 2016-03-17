json.array!(@payments) do |payment|
  json.extract! payment, :id, :bookedseat, :amount, :mode_of_payment, :status_of_payment, :is_deleted
  json.url payment_url(payment, format: :json)
end

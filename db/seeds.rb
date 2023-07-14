transaction = Transaction.find_or_create_by!(
  transaction_type: [0,1].sample,
  value: (1..100).to_a.sample,
  description: "Energia",
  transaction_date: Date.today,
  status: [true, false].sample
)
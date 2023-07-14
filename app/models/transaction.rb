class Transaction < ApplicationRecord
  enum transaction_type: { income: 0, outcome: 1 }
end

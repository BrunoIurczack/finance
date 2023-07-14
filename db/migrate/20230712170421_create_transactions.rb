class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.integer :transaction_type, default: nil
      t.float :value
      t.string :description
      t.date :transaction_date
      t.boolean :status

      t.timestamps
    end
  end
end

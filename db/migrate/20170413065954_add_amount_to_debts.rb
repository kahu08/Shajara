class AddAmountToDebts < ActiveRecord::Migration[5.0]
  def change
    add_column :debts, :amount, :integer
  end
end

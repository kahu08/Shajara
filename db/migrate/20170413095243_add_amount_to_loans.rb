class AddAmountToLoans < ActiveRecord::Migration[5.0]
  def change
    add_column :loans, :amount, :integer
  end
end

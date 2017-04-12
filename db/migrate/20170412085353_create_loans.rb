class CreateLoans < ActiveRecord::Migration[5.0]
  def change
    create_table :loans do |t|
      t.string :to
      t.datetime :repayment_date
      t.text :description

      t.timestamps
    end
  end
end

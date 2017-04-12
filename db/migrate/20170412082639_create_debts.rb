class CreateDebts < ActiveRecord::Migration[5.0]
  def change
    create_table :debts do |t|
      t.string :from
      t.datetime :receive_date
      t.text :description

      t.timestamps
    end
  end
end

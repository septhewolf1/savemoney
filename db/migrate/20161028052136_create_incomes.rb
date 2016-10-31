class CreateIncomes < ActiveRecord::Migration[5.0]
  def change
    create_table :incomes do |t|
      t.string :user
      t.integer :amount
      t.boolean :indispensable
      t.text :description

      t.timestamps
    end
  end
end

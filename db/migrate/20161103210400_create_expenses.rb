class CreateExpenses < ActiveRecord::Migration[5.0]
  def change
    create_table :expenses do |t|
      t.integer :amount
      t.boolean :indispensable
      t.text :description
      t.date :date

      t.timestamps
    end
  end
end

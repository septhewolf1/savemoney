class RemoveIndispensableFromExpenses < ActiveRecord::Migration[5.0]
  def change
    remove_column :expenses, :indispensable, :boolean
    remove_column :incomes, :indispensable, :boolean
  end
end

class ChangAmounttofloat < ActiveRecord::Migration[5.0]
  def change
  	change_column :incomes, :amount, :float
  	change_column :expenses, :amount, :float
  end
end

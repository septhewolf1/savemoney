class AddUserRefToExpenses < ActiveRecord::Migration[5.0]
  def change
    add_reference :expenses, :users, foreign_key: true
  end
end

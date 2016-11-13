class AddUserRefToIncomes < ActiveRecord::Migration[5.0]
  def change
    add_reference :incomes, :users, foreign_key: true
  end
end

class RemoveUserFromIncomes < ActiveRecord::Migration[5.0]
  def change
    remove_column :incomes, :user, :string
  end
end

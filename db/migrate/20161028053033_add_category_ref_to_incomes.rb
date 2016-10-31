class AddCategoryRefToIncomes < ActiveRecord::Migration[5.0]
  def change
    add_reference :incomes, :categories, foreign_key: true
  end
end

class AddCategoryRefToExpenses < ActiveRecord::Migration[5.0]
  def change
    add_reference :expenses, :categories, foreign_key: true
  end
end

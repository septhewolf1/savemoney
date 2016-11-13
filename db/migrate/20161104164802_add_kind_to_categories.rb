class AddKindToCategories < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :kind, :string, null: false
  end
end

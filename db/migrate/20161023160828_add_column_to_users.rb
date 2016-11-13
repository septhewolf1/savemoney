class AddColumnToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :location, :string
    add_column :users, :image_url, :string
    add_column :users, :url, :string
    add_column :users, :provider, :string
    add_index :users, :provider
    add_index :users, :uid
    add_index :users, [:provider, :uid], unique: true
  end
end

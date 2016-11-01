class Addlinkbetwentable < ActiveRecord::Migration[5.0]
  def change
  	create_table :incomes do |t|
  		t.belongs_to :user, index: true
    end

    create_table :categories do |t|
  		t.belongs_to :income, index: true
    end
  end
end
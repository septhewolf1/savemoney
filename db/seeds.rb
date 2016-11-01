# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.delete_all
Category.create!(title: 'Bar',
  description: "All expenses from a Bar: place where drinks or refreshments are served.")

Category.create!(title: 'Car',
  description: "All expenses or incame from your car. For example expenses of insurance, fuel.")

Category.create!(title: 'Gift',
  description: "All expenses or incame from your gift.")

Income.delete_all
User.delete_all

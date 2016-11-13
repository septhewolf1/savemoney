# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.delete_all
Category.create!(title: 'Bar',
  description: "All expenses from a Bar: place where drinks or refreshments are served.",
  kind: "expenses")

Category.create!(title: 'Car',
  description: "All expenses or incomes from your car. For example expenses of insurance, fuel.",
  kind: "expenses")

Category.create!(title: 'Gift',
  description: "All expenses or incomes from your gift.",
  kind: "both")

Category.create!(title: 'Bank',
  description: "All expenses or incomes from your bank.",
  kind: "both")

Category.create!(title: 'Book',
  description: "All expenses from buying a book.",
  kind: "expenses")

Category.create!(title: 'Clothes',
  description: "All expenses from buying clothes.",
  kind: "expenses")

Category.create!(title: 'Education',
  description: "All expenses from education.",
  kind: "expenses")

Category.create!(title: 'Concert',
  description: "All expenses from buying tikets for concert.",
  kind: "expenses")

Category.create!(title: 'Gym',
  description: "All expenses from your gym.",
  kind: "expenses")

Category.create!(title: 'Flight',
  description: "All expenses from buying tikets for flight.",
  kind: "expenses")

Category.create!(title: 'Grocery',
  description: "All expenses from grocery.",
  kind: "expenses")

Category.create!(title: 'Health',
  description: "All expenses from your health.",
  kind: "expenses")

Category.create!(title: 'Holiday',
  description: "All expenses for your holiday.",
  kind: "expenses")

Category.create!(title: 'Home',
  description: "All expenses or incomes from your house.",
  kind: "expenses")

Category.create!(title: 'Movie',
  description: "All expenses for buying movie, ticket for cinema or subscription for netflix.",
  kind: "expenses")

Category.create!(title: 'Music',
  description: "All expenses for buying music, ticket or subscription for spotify.",
  kind: "expenses")

Category.create!(title: 'Credit',
  description: "All incomes from credit, for example when you lend your money.",
  kind: "incomes")

Category.create!(title: 'Investment',
  description: "All incomes from investment, for example stock investment.",
  kind: "incomes")

Category.create!(title: 'Rent',
  description: "All incomes from rent, for example when you rent your house.",
  kind: "incomes")

Category.create!(title: 'Salary',
  description: "All incomes from your salary.",
  kind: "incomes")

Income.delete_all
User.delete_all
Expense.delete_all

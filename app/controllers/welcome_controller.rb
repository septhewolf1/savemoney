class WelcomeController < ApplicationController
  def index
  	@totalIncome = Income.where(users_id: session[:user_id]).sum(:amount)
  	@totalExpenses = -Expense.where(users_id: session[:user_id]).sum(:amount)
  	@total = @totalIncome+@totalExpenses
  end
end
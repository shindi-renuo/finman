class DashboardController < ApplicationController
  def index
    @user = current_user
    @expense = Expense.new
    @expenses = Expense.all
  end
end

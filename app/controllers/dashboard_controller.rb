class DashboardController < ApplicationController
  def index
    @user = current_user
    @expense = Expense.new
    @expenses = Expense.all
    @budgeting_goals = BudgetingGoal.all
    @budgeting_goal = BudgetingGoal.new

  end
end

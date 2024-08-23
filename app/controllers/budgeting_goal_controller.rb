class BudgetingGoalController < ApplicationController
  def index
    @budgeting_goals = BudgetingGoal.all
  end

  def create
    budgeting_goal = BudgetingGoal.new(budgeting_goal_params)

    if budgeting_goal.save
      redirect_to root_path, notice: 'Budgeting goal was successfully created.'
    else
      flash.now[:error] = 'Budgeting goal was not created.'
      render 'dashboard/index'
    end
  end

  private
  def budgeting_goal_params
    params.require(:budgeting_goal).permit(:name, :amount, :start_date, :end_date)
  end
end

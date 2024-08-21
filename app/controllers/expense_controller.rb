# frozen_string_literal: true

class ExpenseController < ApplicationController
  def index
    @expenses = Expense.all
  end

  def create
    @expense = Expense.new(expense_params)

    puts @expense.inspect

    if @expense.save
      redirect_to root_path, notice: 'Expense was successfully created.'
    else
      flash.now[:notice] = 'Expense could not be created.'
      render 'dashboard/index', status: :unprocessable_entity
    end
  end

  def destroy
    @expense = Expense.find(params[:id])

    if @expense.destroy
      redirect_to root_path, notice: 'Expense was successfully deleted.'
    else
      flash.now[:notice] = 'Expense could not be deleted.'
      render 'dashboard/index', status: :unprocessable_entity
    end
  end

  def edit
    @expense = Expense.find(params[:id])
  end

  def update
    @expense = Expense.find(params[:id])

    if @expense.update(expense_params)
      redirect_to root_path, notice: 'Expense was successfully updated.'
    else
      flash.now[:notice] = 'Expense could not be updated.'
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def expense_params
    params.require(:expense).permit(:name, :amount, :date, :category)
  end
end

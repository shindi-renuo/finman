require 'rails_helper'

describe ExpenseHelper do
  # Create expense helper method.
  def create_expense(amount, date, description)
    Expense.new(amount, date, description)
  end
end

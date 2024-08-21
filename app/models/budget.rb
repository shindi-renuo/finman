# BudgetingGoal Model
class Budget < ApplicationRecord
  validates :goal_name, presence: true
  validates :amount, presence: true, numerality: { greater_than: 0 }
  validates :start_date, presence: true
  validates :end_date, presence: true
end

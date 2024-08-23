Rails.application.routes.draw do
  devise_for :users

  root 'dashboard#index'
  get 'profile', to: 'profile#show'
  get 'up' => 'rails/health#show', as: :rails_health_check

  # -- Expense
  post 'expenses', to: 'expense#create', as: :create_expense
  delete 'expenses/:id', to: 'expense#destroy', as: :delete_expense
  get 'expenses', to: 'expense#index', as: :expenses
  get 'expenses/:id/edit', to: 'expense#edit', as: :edit_expense
  patch 'expenses/:id', to: 'expense#update', as: :update_expense

  # -- Budgeting Goal
  post 'budgeting_goals', to: 'budgeting_goal#create', as: :create_budgeting_goal
  delete 'budgeting_goals/:id', to: 'budgeting_goal#destroy', as: :delete_budgeting_goal
  get 'budgeting_goals', to: 'budgeting_goal#index', as: :budgeting_goals
  get 'budgeting_goals/:id/edit', to: 'budgeting_goal#edit', as: :edit_budgeting_goal
  patch 'budgeting_goals/:id', to: 'budgeting_goal#update', as: :update_budgeting_goal
end

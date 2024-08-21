Rails.application.routes.draw do
  devise_for :users

  root 'dashboard#index'
  get 'profile', to: 'profile#show'
  get 'up' => 'rails/health#show', as: :rails_health_check

  post 'expenses', to: 'expense#create', as: :create_expense
  delete 'expenses/:id', to: 'expense#destroy', as: :delete_expense
  get 'expenses', to: 'expense#index', as: :expenses
  get 'expenses/:id/edit', to: 'expense#edit', as: :edit_expense
  patch 'expenses/:id', to: 'expense#update', as: :update_expense
end

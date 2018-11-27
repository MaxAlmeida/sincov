Rails.application.routes.draw do
  devise_for :users
  resources :budget_products
  resources :budgets
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'products#index'

end

Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }


  #get 'email_validator/:email', to: 'validates#email_uniquess',constraints: { email: /[^\/]+/}
  resources :budget_products
  resources :budgets
  resources :products

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'

end

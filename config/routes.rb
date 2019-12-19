Rails.application.routes.draw do
  get 'reports/info'
  resources :users
  get :hello_word, to: 'hello_word#index'
  root 'users#index'
end
Rails.application.routes.draw do
  resources :questions, only: [:create]
  devise_for :users
  root to: 'pages#home'
  resources :appointments, only: [:new, :create, :index]
  resources :students, only: [:new, :create]
end

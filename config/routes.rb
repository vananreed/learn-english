Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :appointments, only: [:new, :create, :index]
end

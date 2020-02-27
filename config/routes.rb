Rails.application.routes.draw do
  devise_for :users

  root "picture#index"
  resources :home, only: [:index] 
  resources :users, only: [:update, :edit]
  resources :messages, only: [:index, :create]
  resources :devise
end

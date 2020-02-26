Rails.application.routes.draw do
  devise_for :users
  root "picture#index"
  root 'pages#show'
end

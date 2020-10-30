Rails.application.routes.draw do
  root to: 'hobics#index'
  devise_for :users
  resources :hobics, only: [:index]
end
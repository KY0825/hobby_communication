Rails.application.routes.draw do
  root to: 'hobics#index'
  devise_for :users
  resources :hobics, only: [:index]
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create, :destroy] do
    resources :chats, only: [:index, :create]
  end
  resources :groups, only: [:new, :create, :destroy] do
    resources :messages, only: [:index, :create]
  end
end
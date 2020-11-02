Rails.application.routes.draw do
  root to: 'hobics#index'
  devise_for :users
  resources :hobics, only: [:index]
  resources :rooms, only: [:new, :index] do
    resources :chats, only: [:index, :edit]
  end
  resources :groups, only: [:new, :index] do
    resources :messages, only: [:index, :edit]
  end
end
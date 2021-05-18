Rails.application.routes.draw do
  resources :user_stocks, only: [:create, :destroy]
  resources :friendships, only: [:create, :destroy]
  devise_for :users
  root to: 'welcome#index'

  get 'portfolio', to: 'users#portfolio'
  get 'search_stock', to: "stocks#search"
  get 'my_friends', to: "users#my_friends"
  get 'search_friend', to: "users#search"

  resources :users, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :user_stocks
  devise_for :users
  root to: 'welcome#index'

  get 'portfolio', to: 'users#portfolio'
  get 'search_stock', to: "stocks#search"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

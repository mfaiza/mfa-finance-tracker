Rails.application.routes.draw do
  devise_for :users
  root to: 'welcome#index'

  get 'portfolio', to: 'users#portfolio'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

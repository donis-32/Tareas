Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  resources :users
  resources :groups
  resources :games
  resources :teams
  resources :pools
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to:"home#index"
end

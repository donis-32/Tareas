Rails.application.routes.draw do
  resources :groups
  resources :games
  resources :teams
  resources :pools
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

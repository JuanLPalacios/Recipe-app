Rails.application.routes.draw do
  resources :recipes, only: [:index, :show, :destroy]
  get '/public_recipes', to: 'recipies#public_recipes'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users do
    resources :foods
  end
  resources :foods
  resources :recipes
  # Defines the root path route ("/")
  root "recipies#public_recipes"
end

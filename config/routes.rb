Rails.application.routes.draw do
  get 'users/general_shopping_list'
  resources :recipes, only: [:index, :show, :destroy]
  get '/public_recipes', to: 'recipies#public_recipes'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "recipies#public_recipes"
end

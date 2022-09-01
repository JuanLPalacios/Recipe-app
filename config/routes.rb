Rails.application.routes.draw do
  devise_for :users
  get '/general_shopping_list', to: 'users#general_shopping_list'
  get '/public_recipes', to: 'recipes#public_recipes'
  resources :recipes, only: [:index, :show, :destroy] do
    resources :recipe_foods ,only: [:new, :create, :edit, :update, :destroy]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users do
    resources :foods
  end
  resources :foods
  resources :recipes, only: [:index, :show, :destroy]
  # Defines the root path route ("/")
  root "recipes#public_recipes"
end

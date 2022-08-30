Rails.application.routes.draw do
  get 'foods/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users do
    resources :foods
  end
  # Defines the root path route ("/")
  # root "articles#index"
end

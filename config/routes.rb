Rails.application.routes.draw do
  resources :roles
  resources :categories
  resources :products
  resources :users, only: [:index,  :show, :update, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # Defines the login path route ("/login")
  # get "/login", to: "sessions#new"
  post "signup", to: "users#create"
  post "/signin", to: "sessions#create"
  delete "/signout", to: "sessions#destroy"
end
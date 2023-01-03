Rails.application.routes.draw do
  resources :product_order_lists
  resources :products #, only:[:index, :show, :create, :destroy]
  resources :orders
  resources :users #, only:[:index, :show, :create, :destroy]

  get "/me", to: "users#show"
  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end

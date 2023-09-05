Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts
  resources :store, only: :index
  resources :products
  root "store#index"
end

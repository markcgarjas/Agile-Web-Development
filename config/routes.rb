Rails.application.routes.draw do
  resources :store, only: :index
  resources :products
  root "products#index"
end

Rails.application.routes.draw do
  devise_for :users
  resources :products, except: [:destroy, :show]
  root "products#index"
end

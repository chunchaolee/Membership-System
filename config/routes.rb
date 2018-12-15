Rails.application.routes.draw do
  devise_for :users
  resources :products, except: [:destroy, :show]
  namespace :admin do
    resources :users, only: [:index] do
      post :promotion
      delete :demotion
    end
  end

  get "role/upgrade" ,to: "roles#premium"
  root "products#index"
end

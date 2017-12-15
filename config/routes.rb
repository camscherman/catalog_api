Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      get 'shipments/create'
    end
  end

  get 'home/index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  namespace :api, defaults: { format: :json } do
    namespace :v1 do

    resources :books, only: [:index, :show]
    resources :catalogs, only: [:index, :show]
    resources :orders, only: [:create]
    resources :shipments, only: [:create]

    end
  end
end

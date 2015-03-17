Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :products, only: [:index, :show]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  root to: "products#index"

  post 'change_category_position', to: 'categories#change_category_position'
  post 'empty_cart', to: 'orders#empty_cart'
  post 'confirm', to: 'orders#confirm'
  get 'confirm_order', to: 'orders#confirm_order'
  get 'search' => 'pages#search', as: 'search'
end

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'cards/show'
  get 'shops/index'
  get 'shops/show'
  devise_for :users
  # devise_for :views
  # get 'home/index'
  # get 'home/show'
  root to: "home#index"

  resources :menus 


  # resource :home, only:[:index, :show]

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
    
  end

  resources :orders
  resources :order_items

  resources :shops, only:[:index, :show]
  resources :order_items

   resource :cards, only:[:show]
    get '/search', to: "menus#search"
  


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

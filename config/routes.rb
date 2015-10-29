Rails.application.routes.draw do
  
  resources :stores
  resources :users
  root to: 'visitors#index'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'

  resource :weixins, only: [:show, :create]

  namespace :wechat do
  	resources :stores
  end
end

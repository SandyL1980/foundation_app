Rails.application.routes.draw do
  

  get 'pages/index'

  get 'pages/show'

  devise_for :users
  resources :users
  root to: 'pictures#index'

  resources :pictures do
  	resources :reviews
  end

  get 'pages/nature', :to => 'pages#nature'
  get 'pages/animal', :to => 'pages#animal'
  get 'pages/fashion', :to => 'pages#fashion'
  get 'pages/city', :to => 'pages#city'
  get 'pages/business', :to => 'pages#business'
  get 'pages/technic', :to => 'pages#technic'
  get 'pages/people', :to => 'pages#people'
end

Rails.application.routes.draw do
  

  devise_for :users
  resources :users
  root to: 'pictures#index'

  resources :pictures do
  	resources :reviews
  end

end

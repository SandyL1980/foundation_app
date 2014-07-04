Rails.application.routes.draw do
  
  # resources :categories, :only => [:index, :show]
  get 'categories/:name', :to => 'categories#index', :as => "category"

  get 'pages/index'

  get 'pages/show'

  devise_for :users
  resources :users
  root to: 'pictures#index'

  resources :pictures do
  	resources :reviews
  end

end

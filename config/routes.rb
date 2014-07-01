Rails.application.routes.draw do
  

  root to: 'pictures#index'

  resources :pictures do
  	resources :reviews
  end

end

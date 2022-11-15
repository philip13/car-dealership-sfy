Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  root "cars#index"
  
  resources :cars do
    resources :cars_dealerships, except: [:index, :show]
  end

  resources :dealerships


end

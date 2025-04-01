Rails.application.routes.draw do
  # Home page
  root 'home#index'
  
  # Authentication routes
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  # Users resource (except index since we don't need to list all users)
  resources :users, except: [:index, :destroy]

  get "up" => "rails/health#show", as: :rails_health_check

end

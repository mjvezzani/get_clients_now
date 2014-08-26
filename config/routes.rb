Rails.application.routes.draw do

  root to: 'pages#main'

  get '/register', to: 'users#new', as: 'registration'
  get '/dashboard', to: 'pages#dashboard', as: 'dashboard'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :users, except: [:destroy]
  resources :clients
end

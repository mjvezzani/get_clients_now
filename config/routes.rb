Rails.application.routes.draw do

  root to: 'users#show'

  resources :users, except: [:destroy]
  resources :clients
end

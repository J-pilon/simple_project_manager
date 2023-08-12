Rails.application.routes.draw do
  resources :workspaces
  
  resources :users, only: :create
  
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  root 'placeholders#show'
end

Rails.application.routes.draw do
  root 'placeholders#show'
  
  resources :users, only: :create

  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end

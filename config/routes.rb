Rails.application.routes.draw do
  root 'pages#home'

  get '/admin', to: 'pages#admin'
  get '/index', to: 'pages#index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/signup', to: 'users#new'

  resources :users
end

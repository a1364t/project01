Rails.application.routes.draw do  
  root :to => 'pages#home'
  resources :users, :only => [:new, :create, :index, :destroy]
  get '/rents/search' => 'rents#search'

  get '/login' => 'session#new'
  post 'login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :sells
  resources :rents
  resources :agents

  
end

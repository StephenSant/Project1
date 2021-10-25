Rails.application.routes.draw do
  root :to =>  'pages#home'
  resources :users, :only => [:index, :new, :create]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/users/:id' => 'users#show', :as => :user

  get '/shops/index' => 'shops#index'
  get '/shops/new' => 'shops#new'
  get '/shops/:id' => 'shops#show', :as => :shop

end

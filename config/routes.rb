Rails.application.routes.draw do
  root :to =>  'pages#home'

  get 'carts/:id' => "carts#show", as: "cart"
  delete 'carts/:id' => "carts#destroy"

  get 'carts/show'

  post 'line_items/:id/add' => "line_items#add_quantity", as: "line_item_add"
  post 'line_items/:id/reduce' => "line_items#reduce_quantity", as: "line_item_reduce"
  post 'line_items' => "line_items#create"
  get 'line_items/:id' => "line_items#show", as: "line_item"
  delete 'line_items/:id' => "line_items#destroy"
  

  resources :products
  resources :orders

  resources :users, :only => [:index, :new, :create]

  get 'login' => 'session#new'
  post 'login' => 'session#create'
  delete 'login' => 'session#destroy'

  get 'users/:id' => 'users#show', :as => :user

  get 'shops/index' => 'shops#index'
  get 'shops/new' => 'shops#new'
  get 'shops/:id' => 'shops#show', :as => :shop
  
end

Rails.application.routes.draw do
 
  get '/bees' => 'bees#index'
  get '/' => 'bees#index'

  get '/bees/new' => 'bees#new'
  post '/bees' => 'bees#create'

  get '/bees/:id' => 'bees#show'

  get '/bees/:id/edit' => 'bees#edit'
  patch '/bees/:id' => 'bees#update'

  delete '/bees/:id' => 'bees#destroy'

  get '/random' => 'bees#random'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  post '/orders'=> 'orders#create'
  get '/orders/:id' => 'orders#show'

  get '/carted_products' => 'carted_products#index'
  post '/carted_products' => 'carted_products#create'
  delete '/carted_products/:id' => 'carted_products#destroy'

end

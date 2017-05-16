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
end

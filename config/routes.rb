Rails.application.routes.draw do
 
  get '/bees' => 'bees#index'
  get '/' => 'bees#index'

  get '/bees/new' => 'bees#new'
  post '/bees' => 'bees#create'

  get '/bees/:id' => 'bees#show'
end

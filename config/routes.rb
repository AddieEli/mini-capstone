Rails.application.routes.draw do
  get '/bee' => 'bees#all_bees'
end

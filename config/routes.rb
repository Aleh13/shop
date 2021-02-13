Rails.application.routes.draw do
  #get '/items', to: 'items#index'
  #post '/items', to: 'items#create'
  resources :items do
    get :upvote,    on: :member
    get :expensive, on: :collection
  end

  
end

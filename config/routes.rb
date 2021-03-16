Rails.application.routes.draw do
  get '/admin/users_count', 'admin#users_count'
  #get '/items', to: 'items#index'
  #post '/items', to: 'items#create'
  resources :items do
    get :upvote,    on: :member
    get :expensive, on: :collection
  end

  root to: 'items#index'

  
end

Rails.application.routes.draw do

  resources :pocketmonsters
  resources :trainers
  root "trainers#index"

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'trainers#new'
  post '/users' => 'trainers#create'

  get '/search' => 'trainers#search'

end

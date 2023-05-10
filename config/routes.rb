Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :users, :only => [:index, :new, :create]
  resources :reservations
  resources :airplanes

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end

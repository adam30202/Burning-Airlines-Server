Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :users, :only => [:index, :new, :create]
  resources :admins, :only => [:index, :new, :create]
  resources :reservations
  resources :airplanes
  resources :login
  resources :sessions

  get '/admin/signup' => 'admins#new'
  post '/admin/signup' => 'admins#create'


end

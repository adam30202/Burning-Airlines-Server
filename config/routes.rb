Rails.application.routes.draw do
  root :to => 'airplanes#index'
  resources :users, :only => [:index, :new, :create]
  resources :admins, :only => [:index, :new, :create]
  resources :reservations
  resources :airplanes
<<<<<<< HEAD
=======
  resources :flights
>>>>>>> 28dd7b9c2e59b6685e3d0d40b8db6f85748cc1bd
  resources :login
  resources :sessions

  get '/admin/signup' => 'admins#new'
  post '/admin/signup' => 'admins#create'


end

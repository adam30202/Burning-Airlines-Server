Rails.application.routes.draw do
  root :to => 'airplanes#index'
  resources :users, :only => [:index, :new, :create]
  resources :admins, :only => [:index, :new, :create]
  resources :reservations
  resources :airplanes
  resources :flights
  resources :login
  resources :sessions

  get '/admin/signup' => 'admins#new'
  post '/admin/signup' => 'admins#create'


end

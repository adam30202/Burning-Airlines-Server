Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :users, :only => [:index, :new, :create]
  resources :reservations
<<<<<<< HEAD
  resources :airplanes
=======

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
>>>>>>> 87ba2badf923be2799c24cbfa826b1fd8f991722
end

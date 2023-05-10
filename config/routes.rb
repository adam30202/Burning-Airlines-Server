Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :users, :only => [:index, :new, :create]
  resources :admins, :only => [:index, :new, :create]
  resources :reservations
  resources :airplanes
<<<<<<< HEAD
  resources :flights
=======
  resources :login
  resources :sessions

  get '/admin/signup' => 'admins#new'
  post '/admin/signup' => 'admins#create'

>>>>>>> 7206193 (Added more seed data and made changes to controllers)

end

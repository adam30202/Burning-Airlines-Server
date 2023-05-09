Rails.application.routes.draw do
  get 'reservations/index'
  get 'reservations/new'
  get 'reservations/edit'
  get 'reservations/show'
  get 'reservations/create'
  get 'reservations/update'
  get 'reservations/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :bookings
  resources :addresses
  resources :customers
  resources :all_beers
  get 'beer/index'
  root 'beer#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

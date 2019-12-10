Rails.application.routes.draw do
  resources :users
  resources :reservations
  resources :addresses
  resources :customers
  resources :brewed_beers
  resources :all_beers
  get 'beer/index'
  root 'beer#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
    post '/login', to: 'sessions#create'
    get '/logout', to: 'sessions#destroy'
  resources :users
  resources :reservations
  resources :addresses
  resources :customers
  resources :brewed_beers
  resources :all_beers
  get 'beer/index'
  root 'sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'search_flights', to: 'flights#search'

  resources :flights, only: [:index, :show]
  resources :bookings

  root to: "flights#index"
end

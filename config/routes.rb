Rails.application.routes.draw do
  
  get 'search_flights', to: 'flights#search'

  resources :flights, only: [:index, :show]

  root to: "flights#index"
end

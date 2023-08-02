Rails.application.routes.draw do
  get 'search_flights', to: 'flights#search'
  root to: "flights#index"
end

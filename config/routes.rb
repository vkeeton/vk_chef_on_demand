Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :offers, only: %i[index show new create] do
    resources :bookings, only: %i[new create]
  end
  # Defines the root path route ("/")
  # root "articles#index"
  resources :bookings, only: %i[destroy index show update]
  # resources :bookings
  namespace :chef do
    resources :bookings, only: %i[index]
  end
  # resources :chefs
end

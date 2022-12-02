Rails.application.routes.draw do

  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/misautos', to: 'cars#misautos'

  resources :cars do
    resources :bookings, only: %i[new create]
  end

  resources :bookings, only: %i[index edit update destroy]
end

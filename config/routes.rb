Rails.application.routes.draw do
  get 'booking/new'
  get 'booking/update'
  get 'booking/create'
  get 'booking/pay'
  get 'cars/index'
  get 'cars/show'
  get 'cars/new'
  get 'cars/create'
  get 'cars/update'
  get 'cars/destroy'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :car, except: [:edit] do
    resources :booking
  end
end

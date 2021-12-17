Rails.application.routes.draw do
  # get 'home/index'
  root 'home#index'

  resources :books, only: [:index, :create, :update, :destroy]
  resources :films, only: [:index, :create, :update, :destroy]
  resources :tv_shows, only: [:index, :create, :update, :destroy]
end

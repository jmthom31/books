Rails.application.routes.draw do
  # get 'home/index'
  root 'home#index'

  resources :books, only: [:index, :new, :create, :update, :destroy]
  resources :films, only: [:index, :new, :create, :update, :destroy]
  resources :tv_shows, only: [:index, :new, :create, :update, :destroy]
end

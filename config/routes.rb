Rails.application.routes.draw do

  resources :users do
    resources :posts, only: [:index, :create]
  end

  resources :posts, only: [:show, :update, :destroy] do
    resources :comments, only: [:index, :create, :destroy]
  end

  root 'home#index'

end

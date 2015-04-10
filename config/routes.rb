Rails.application.routes.draw do

  resources :users do
    resources :posts, only: [:index, :create]
  end

  resources :posts, only: [:index, :show, :create, :update, :destroy] do
    resources :comments, only: [:index, :create, :destroy]
  end

  root 'home#index'

  post '/login', to: 'users#login'
  get '/logout', to: 'users#logout'
  patch '/amazon/sign_key/:id', to: 'amazon#sign_key'

end

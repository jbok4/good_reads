Rails.application.routes.draw do

  
  devise_for :users, controllers: {omniauth_callbacks: "users/omniauth_callbacks" }
  
  resources :books do
    resources :reviews, except: [:show, :index]
  end

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :users, only: [:index, :show] do
    resources :reviews
  end

  root 'books#index'
  get '/books/customerfave', to: 'books#customerfave'

  #get '/auth/facebook/callback' => 'devise/sessions#create'

end

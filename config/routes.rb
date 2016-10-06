Rails.application.routes.draw do

  resources :reviews
  devise_for :users
  resources :books

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  root 'books#index'

end

Rails.application.routes.draw do
  devise_for :users
  resources :cars 
  resources :ratings, only: :create
  post :test, to:'mail#test'
  root 'cars#index'
end

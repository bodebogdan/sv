Rails.application.routes.draw do
  resources :cars 
  resources :ratings, only: :create

end

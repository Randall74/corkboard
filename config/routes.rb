Rails.application.routes.draw do
  devise_for :users
  resources :pegs
  
  root "pegs#index"
end

Rails.application.routes.draw do
  resources :pegs
  
  root "pegs#index"
end

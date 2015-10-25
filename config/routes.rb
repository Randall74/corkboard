Rails.application.routes.draw do
  devise_for :users
  resources :pegs do
    member do
      put "yeah", to: "pegs#upvote"
    end
  end
  
  root "pegs#index"
end

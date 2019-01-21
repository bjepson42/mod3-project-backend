Rails.application.routes.draw do
  resources :games
  resources :bets
  resources :users
  resources :drawings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :games, :bets, :words, :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

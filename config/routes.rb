Rails.application.routes.draw do
  resources :deck
  resources :deck_builder, only: [:new, :create]


  root to: "deck#index"
end

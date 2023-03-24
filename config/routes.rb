Rails.application.routes.draw do
  resources :powers, only: [:index, :show, :update]
  # heroes model
  resources :heroes, only: [:index, :show]
end

Rails.application.routes.draw do
  # heroes model
  resources :heroes, only: [:index]
end

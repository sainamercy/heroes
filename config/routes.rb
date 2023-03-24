Rails.application.routes.draw do
  resources :heroe_powers, only: [:create]
  resources :powers, only: [:index, :show, :update]
  resources :heroes, only: [:index, :show]
end

Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :users, only: %i[index show]
  resources :connections, only: %i[new create destroy]
  resources :groups
end

Rails.application.routes.draw do
  devise_for :users
  # root to: "pages#home"
  root to: "users#show"
  resources :users, only: %i[index show]
  resources :connections, only: %i[new create destroy]
  resources :groups
end

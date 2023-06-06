Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :groups
  resources :connections, only: %i[new create destroy]
end

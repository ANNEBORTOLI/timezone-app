Rails.application.routes.draw do
  devise_for :users
  root to: "users#profile"

  resources :users, only: %i[index edit update show] do
    collection do
      get :profile
    end
  end

  resources :connections, only: %i[new create destroy]
  resources :groups do
    resources :messages, only: :create
  end
end

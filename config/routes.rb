Rails.application.routes.draw do
  devise_for :users
  root to: "users#profile"

  resources :users, only: %i[index show] do
    collection do
      get :profile
    end
  end
  resources :connections, only: %i[new create destroy]
  resources :groups
  get 'test', to: 'pages#test'
end

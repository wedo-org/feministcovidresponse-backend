Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :countries, only: [:index, :show]
      resources :types, only: [:index, :show]
      resources :categories, only: [:index, :show]
      resources :pages, param: :name, only: [:index, :show]
      resources :items, only: [:index, :show]
      get 'ping', action: :index, controller: 'ping'
      post "/login", to: "auth#login"
      get "/auto_login", to: "auth#auto_login"
      get "/user_is_authed", to: "auth#user_is_authed"
      get "/user_is_superadmin", to: "auth#user_is_superadmin"
    end
  end
end
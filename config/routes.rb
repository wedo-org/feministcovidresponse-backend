Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :countries, only: [:index, :show]
      resources :types, only: [:index, :show]
      resources :categories, only: [:index, :show]
      resources :themes, only: [:index, :show]
      resources :category_items, only: [:index, :show]
      resources :items, only: [:index, :show]
    end
  end
end
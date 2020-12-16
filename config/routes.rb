Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :items
      resources :purchases
      get "/profile", to: "users#profile"
      get "/users", to: "users#index"
    end
  end
end

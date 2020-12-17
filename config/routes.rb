Rails.application.routes.draw do
      resources :users
      resources :items
      resources :purchases
      # get "/profile", to: "users#profile"
      # get "/users", to: "users#index"
end

Rails.application.routes.draw do
      resources :items
      resources :purchases
      namespace :api do 
            namespace :v1 do
                  resources :users, only: [:create]
                  # get '/items', to: 'users#items'
                  post "/login", to: "auth#create"
                  get "/profile", to: "users#profile"
                  get "/users", to: "users#index"
            end
      end
end

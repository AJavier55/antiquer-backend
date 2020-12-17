Rails.application.routes.draw do
      namespace :api do 
            namespace :v1 do
                  resources :users, only: [:create]
                  resources :items
                  resources :purchases
                  # get '/items', to: 'users#items'
                  post "/login", to: "auth#create"
                  get "/profile", to: "users#profile"
                  get "/users", to: "users#index"
            end
      end
end

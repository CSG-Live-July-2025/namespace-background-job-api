Rails.application.routes.draw do
  # regular products controller
  get "/products" => "products#index"

  # namespaced products controller
  namespace :api do
    namespace :v1 do
      get "/products" => "products#index"
      post "/products" => "products#create"
      get "/products/:id" => "products#show"
      put "/products/:id" => "products#update"
      delete "/products/:id" => "products#destroy"

      resources :products, only: [:index, :create]

    end
  end
end

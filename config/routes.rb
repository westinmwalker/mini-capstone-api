Rails.application.routes.draw do
  get "/products" => "products#index"
  get "/product/:id" => "products#show"
  post "/products" => "products#create"
  patch "/product/:id" => "products#update"
end

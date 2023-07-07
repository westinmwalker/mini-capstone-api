Rails.application.routes.draw do
  get "/products", controller: "products", action: "index"
  get "/product/:id" => "products#show"
  #  get "/first_product", controller: "products", action: "first_product"
  #  get "/second_product", controller: "products", action: "second_product"
  #  get "/third_product", controller: "products", action: "third_product"
end

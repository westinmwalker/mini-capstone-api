Rails.application.routes.draw do
  #  get "/first_product", controller: "products", action: "first_product"
  #  get "/second_product", controller: "products", action: "second_product"
  #  get "/third_product", controller: "products", action: "third_product"
  get "/all_products", controller: "products", action: "all_products"
  get "/product/:id" => "products#find_product"
end

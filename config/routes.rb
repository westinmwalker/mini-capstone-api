Rails.application.routes.draw do
  get "/one_product", controller: "products", action: "first"
  get "/all_products", controller: "products", action: "all_products"
end

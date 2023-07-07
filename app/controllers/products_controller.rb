class ProductsController < ApplicationController
  def all_products
    @products = Product.all
    render template: "products/index"
  end

  def find_product
    @product = Product.find_by(id: params["id"])
    render template: "products/show"
  end

  # def second_product
  #   @product = Product.second
  #   render template: "products/show"
  # end

  # def third_product
  #   @product = Product.third
  #   render template: "products/show"
  # end
end

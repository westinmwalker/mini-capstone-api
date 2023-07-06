class ProductsController < ApplicationController
  def first
    product = Product.first
    render json: product
  end
end

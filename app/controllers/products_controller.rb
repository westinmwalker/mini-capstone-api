class ProductsController < ApplicationController
  def first
    @product = Product.first
    render json: @product
  end

  def all_products
    @product = Product.all
    render json: @product
  end
end

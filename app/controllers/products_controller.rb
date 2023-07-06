class ProductsController < ApplicationController
  def first
    @product = Product.first
    render json: @product
  end

  def second
    @product = Product.second
    render json: @product
  end

  def all_products
    @products = Product.all
    render json: @products
  end
end

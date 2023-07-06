class ProductsController < ApplicationController
  def first
    product = Product.first
    render json: product
  end

  def all_products
    every = Product.all
    render json: every
  end
end

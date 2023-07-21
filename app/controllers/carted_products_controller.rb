class CartedProductsController < ApplicationController
  before_action :authenticate_user

  def create
    product = Product.find_by(id: params[:product_id])
    @carted_product = CartedProduct.new(
      user_id: current_user.id,
      order_id: nil,
      status: "carted",
      product_id: product.id,
      quantity: params[:quantity],
    )
    if @carted_product.save
      render json: { message: "Product added to cart" }, status: :created
    else
      render json: { errors: @carted_product.errors.full_messages }, status: 422
    end
  end

  def index
    @carted_products = CartedProduct.all
    render template: "carted_products/index"
  end
end

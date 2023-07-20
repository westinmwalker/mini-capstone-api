class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    @products = Product.all
    render template: "products/index"
  end

  def show
    @product = Product.find_by(id: params["id"])
    render :show
  end

  def create
    if current_user && current_user.admin
      @product = Product.create(
        name: params["name"],
        price: params["price"],
        description: params["description"],
        quantity: params["quantity"],
        supplier_id: params["supplier_id"],
      )
      if @product.save
        render :show
      else
        render json: { errors: @product.errors.full_messages }, status: 422
      end
    else
      render json: { errors: @order.errors.full_messages }, status: :unauthorized
    end
  end

  def update
    if current_user && current_user.admin
      @product = Product.find_by(id: params["id"])
      @product.update(
        name: params["name"] || @product.name,
        price: params["price"] || @product.price,
        description: params["description"] || @product.description,
        quantity: params["quantity"] || @product.quantity,
        supplier_id: params["supplier_id"] || @product.supplier_id,
      )
      if @product.save
        render :show
      else
        render json: { errors: @product.errors.full_messages }, status: 422
      end
    else
      render json: { errors: @order.errors.full_messages }, status: :unauthorized
    end
  end

  def destroy
    @product = Product.find_by(id: params["id"])
    @product.destroy

    render json: { message: "Entry has been deleted." }
  end
end

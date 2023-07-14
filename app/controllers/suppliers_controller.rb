class SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
    render template: "suppliers/index"
  end

  def show
    @supplier = Supplier.find_by(id: params["id"])
    render :show
  end

  def create
    @supplier = Supplier.create(
      name: params["name"] || @supplier.name,
      email: params["email"] || supplier.email,
      phone_number: params["phone_number"] || supplier.phone_number,
    )
    if @supplier.save
      render :show
    else
      render json: { errors: @supplier.errors.full_messages }, status: 422
    end

    if @supplier.save
      render :show
    else
      render json: { errors: @supplier.errors.full_messages }, status: 422
    end
  end

  def update
    @supplier = Supplier.find_by(id: params["id"])
    @supplier.update(
      name: params["name"] || @supplier.name,
      email: params["email"] || supplier.email,
      phone_number: params["phone_number"] || supplier.phone_number,
    )
    if @supplier.save
      render :show
    else
      render json: { errors: @supplier.errors.full_messages }, status: 422
    end
  end

  def destroy
    @supplier = Supplier.find_by(id: params["id"])
    @supplier.destroy

    render json: { message: "Entry has been deleted." }
  end
end

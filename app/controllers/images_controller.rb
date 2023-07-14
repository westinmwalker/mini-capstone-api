class ImagesController < ApplicationController
  def index
    @images = Image.all
    render template: "images/index"
  end

  def show
    @image = Image.find_by(id: params["id"])
    render :show
  end

  def create
    @image = Image.create(
      url: params["url"],
      product_id: params["product_id"],
    )
    if @image.save
      render :show
    else
      render json: { errors: @image.errors.full_messages }, status: 422
    end

    if @image.save
      render :show
    else
      render json: { errors: @image.errors.full_messages }, status: 422
    end
  end

  def update
    @image = Image.find_by(id: params["id"])
    @image.update(
      url: params["url"],
      product_id: params["product_id"],
    )
    if @image.save
      render :show
    else
      render json: { errors: @image.errors.full_messages }, status: 422
    end
  end

  def destroy
    @image = Image.find_by(id: params["id"])
    @image.destroy

    render json: { message: "Entry has been deleted." }
  end
end

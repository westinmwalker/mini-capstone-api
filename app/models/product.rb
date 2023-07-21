class Product < ApplicationRecord
  #validates :name, presence: true
  #validates :price, presence: true
  #validates :price, numericality: { greater_than: 0 }
  #validates :quantity, presence: true
  #validates :quantity, numericality: { greater_than: 0 }
  #validates :image_url, presence: true
  #validates :description, presence: true

  belongs_to :supplier

  has_many :images
  has_many :orders
  has_many :category_products
  has_many :categories, through: :category_products
  #has_many :users, through: :carted_products

  # def categories
  #   category_products.map do |category_product|
  #     category_product.product
  #   end
  # end

  #def supplier
  #  Supplier.find_by(id: supplier_id)
  #end

  #def images
  #  Image.where(product_id: id)
  #end

  def is_discounted?
    price <= 10
  end

  def tax
    (price * 0.09).round(3)
  end

  def total
    (price + tax).round(3)
  end
end

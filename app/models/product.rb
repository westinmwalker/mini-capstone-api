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

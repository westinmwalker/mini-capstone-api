class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :quantity, presence: true
  validates :image_url, presence: true
  validates :description, presence: true

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

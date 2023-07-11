class Product < ApplicationRecord
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

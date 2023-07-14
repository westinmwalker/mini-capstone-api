class Image < ApplicationRecord
  def products
    Product.where(supplier_id: id)
  end
end

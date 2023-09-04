class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart, touch: true

  def total_price
    product.price * quantity
  end
end

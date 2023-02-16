class Item < ApplicationRecord

  has_one_attached :image

  has_many :cart_items
  has_many :order_details
  belongs_to :genre

  def tax_price
    f = self.price * 1.1
    f.round
  end

end

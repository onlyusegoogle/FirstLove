class Product < ApplicationRecord
  belongs_to :user
  has_many :product_order_lists

  validates :name, :desc, :price, :discount, :category, :image, presence: true
end

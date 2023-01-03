class User < ApplicationRecord
  has_secure_password

  has_many :orders
  has_many :products
  # has_many :product_order_lists, through :orders

  validates :username, :password_digest, :firstname, :lastname, :address, presence: true
  validates :username, uniqueness: true
end

class Order < ApplicationRecord
    belongs_to :user
    has_many :order_product
    has_many :product, through: :order_product
end

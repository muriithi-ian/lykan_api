class OrderSerializer < ActiveModel::Serializer
  attributes :id, :status, :user_id

  has_many :product, through: :order_product
end

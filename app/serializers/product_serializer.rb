class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image, :original_price, :offer_price, :end_time, :is_available, :quantity
  has_one :user
  has_many :tags
end

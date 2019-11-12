class CartSerializer < ActiveModel::Serializer
  attributes :id, :user_id 
  has_many :items 
  has_one :user
end

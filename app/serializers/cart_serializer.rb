class CartSerializer < ActiveModel::Serializer
  attributes :id, :user_id 
  has_many :items 
  belongs_to :user
end

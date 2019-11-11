class ShelfSerializer < ActiveModel::Serializer
  attributes :id, :zipcode 
  has_many :items
  has_one :user
end

class ShelfSerializer < ActiveModel::Serializer
  attributes :zipcode 
  has_many :items
  has_one :user
end

class ShelfSerializer < ActiveModel::Serializer
  attributes :zipcode 
  has_many :items
end

class ShelfSerializer < ActiveModel::Serializer
  attributes :id, :zipcode 
  has_many :items
  belongs_to :user
end

class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :rented, :start_date, :end_date, :shelf_id, :cart_id, :category 
  belongs_to :cart 
  belongs_to :shelf
end

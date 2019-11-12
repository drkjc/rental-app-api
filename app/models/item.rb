class Item < ApplicationRecord
  belongs_to :shelf
  belongs_to :cart
end

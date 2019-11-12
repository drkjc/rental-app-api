class User < ApplicationRecord
  has_one :shelf
  has_one :cart
end
